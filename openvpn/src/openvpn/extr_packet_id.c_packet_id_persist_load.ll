; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_load.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_packet_id.c_packet_id_persist_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_id_persist = type { i32, i8*, i32, i32, i32, i32 }
%struct.gc_arena = type { i32 }
%struct.packet_id_persist_file_image = type { i32, i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@D_PID_PERSIST = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Cannot open --replay-persist file %s for read/write\00", align 1
@D_PID_PERSIST_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PID Persist Read from %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Read error on --replay-persist file %s\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_id_persist_load(%struct.packet_id_persist* %0, i8* %1) #0 {
  %3 = alloca %struct.packet_id_persist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gc_arena, align 4
  %6 = alloca %struct.packet_id_persist_file_image, align 4
  %7 = alloca i32, align 4
  store %struct.packet_id_persist* %0, %struct.packet_id_persist** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call i32 (...) @gc_new()
  %9 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %11 = call i32 @packet_id_persist_enabled(%struct.packet_id_persist* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %81, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_BINARY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @S_IRUSR, align 4
  %21 = load i32, i32* @S_IWUSR, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @platform_open(i8* %14, i32 %19, i32 %22)
  %24 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %25 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %27 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %13
  %31 = load i32, i32* @D_PID_PERSIST, align 4
  %32 = load i32, i32* @M_ERRNO, align 4
  %33 = or i32 %31, %32
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @msg(i32 %33, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %80

36:                                               ; preds = %13
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %39 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %41 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @read(i32 %42, %struct.packet_id_persist_file_image* %6, i32 8)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 8
  br i1 %46, label %47, label %67

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.packet_id_persist_file_image, %struct.packet_id_persist_file_image* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %51 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %53 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 4
  %54 = getelementptr inbounds %struct.packet_id_persist_file_image, %struct.packet_id_persist_file_image* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %57 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %59 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %58, i32 0, i32 3
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @D_PID_PERSIST_DEBUG, align 4
  %61 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %62 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %65 = call i32 @packet_id_persist_print(%struct.packet_id_persist* %64, %struct.gc_arena* %5)
  %66 = call i32 @dmsg(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %65)
  br label %79

67:                                               ; preds = %36
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i32, i32* @D_PID_PERSIST, align 4
  %72 = load i32, i32* @M_ERRNO, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.packet_id_persist*, %struct.packet_id_persist** %3, align 8
  %75 = getelementptr inbounds %struct.packet_id_persist, %struct.packet_id_persist* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @msg(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %47
  br label %80

80:                                               ; preds = %79, %30
  br label %81

81:                                               ; preds = %80, %2
  %82 = call i32 @gc_free(%struct.gc_arena* %5)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @packet_id_persist_enabled(%struct.packet_id_persist*) #1

declare dso_local i32 @platform_open(i8*, i32, i32) #1

declare dso_local i32 @msg(i32, i8*, i8*) #1

declare dso_local i32 @read(i32, %struct.packet_id_persist_file_image*, i32) #1

declare dso_local i32 @dmsg(i32, i8*, i8*, i32) #1

declare dso_local i32 @packet_id_persist_print(%struct.packet_id_persist*, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
