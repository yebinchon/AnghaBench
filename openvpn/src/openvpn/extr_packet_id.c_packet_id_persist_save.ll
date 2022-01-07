; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_save.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_id_persist = type { i64, i64, i64, i64, i32, i32 }
%struct.packet_id_persist_file_image = type { i64, i64 }
%struct.gc_arena = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@D_PID_PERSIST_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PID Persist Write to %s: %s\00", align 1
@D_PID_PERSIST = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot write to --replay-persist file %s\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Cannot seek to beginning of --replay-persist file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_id_persist_save(%struct.packet_id_persist* %0) #0 {
  %2 = alloca %struct.packet_id_persist*, align 8
  %3 = alloca %struct.packet_id_persist_file_image, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.gc_arena, align 4
  store %struct.packet_id_persist* %0, %struct.packet_id_persist** %2, align 8
  %7 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %8 = call i64 @packet_id_persist_enabled(%struct.packet_id_persist* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %94

10:                                               ; preds = %1
  %11 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %12 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %94

15:                                               ; preds = %10
  %16 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %17 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %20 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %25 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %28 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %94

31:                                               ; preds = %23, %15
  %32 = call i32 (...) @gc_new()
  %33 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %35 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.packet_id_persist_file_image, %struct.packet_id_persist_file_image* %3, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %39 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.packet_id_persist_file_image, %struct.packet_id_persist_file_image* %3, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %43 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SEEK_SET, align 4
  %46 = call i64 @lseek(i32 %44, i64 0, i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %31
  %50 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %51 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @write(i32 %52, %struct.packet_id_persist_file_image* %3, i32 16)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 16
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %59 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %62 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %64 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %67 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @D_PID_PERSIST_DEBUG, align 4
  %69 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %70 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %73 = call i32 @packet_id_persist_print(%struct.packet_id_persist* %72, %struct.gc_arena* %6)
  %74 = call i32 @dmsg(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %73)
  br label %83

75:                                               ; preds = %49
  %76 = load i32, i32* @D_PID_PERSIST, align 4
  %77 = load i32, i32* @M_ERRNO, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %80 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @msg(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %75, %57
  br label %92

84:                                               ; preds = %31
  %85 = load i32, i32* @D_PID_PERSIST, align 4
  %86 = load i32, i32* @M_ERRNO, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.packet_id_persist*, %struct.packet_id_persist** %2, align 8
  %89 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @msg(i32 %87, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %84, %83
  %93 = call i32 @gc_free(%struct.gc_arena* %6)
  br label %94

94:                                               ; preds = %92, %23, %10, %1
  ret void
}

declare dso_local i64 @packet_id_persist_enabled(%struct.packet_id_persist*) #1

declare dso_local i32 @gc_new(...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, %struct.packet_id_persist_file_image*, i32) #1

declare dso_local i32 @dmsg(i32, i8*, i32, i32) #1

declare dso_local i32 @packet_id_persist_print(%struct.packet_id_persist*, %struct.gc_arena*) #1

declare dso_local i32 @msg(i32, i8*, i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
