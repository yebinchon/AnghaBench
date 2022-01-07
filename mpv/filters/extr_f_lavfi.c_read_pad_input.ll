; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_read_pad_input.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_read_pad_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lavfi = type { i32, i64 }
%struct.lavfi_pad = type { i64, i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@MP_PIN_IN = common dso_local global i64 0, align 8
@MP_FRAME_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"unknown frame %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"format change on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lavfi*, %struct.lavfi_pad*)* @read_pad_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_pad_input(%struct.lavfi* %0, %struct.lavfi_pad* %1) #0 {
  %3 = alloca %struct.lavfi*, align 8
  %4 = alloca %struct.lavfi_pad*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  store %struct.lavfi* %0, %struct.lavfi** %3, align 8
  store %struct.lavfi_pad* %1, %struct.lavfi_pad** %4, align 8
  %6 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %7 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MP_PIN_IN, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %14 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %20 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  br label %112

24:                                               ; preds = %18
  %25 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %26 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %25, i32 0, i32 4
  %27 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %28 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @mp_pin_out_read(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = bitcast %struct.TYPE_6__* %26 to i8*
  %33 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %35 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %24
  %40 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %41 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MP_FRAME_EOF, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %48 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %52 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %46
  %56 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %57 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %58 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mp_frame_type_str(i64 %60)
  %62 = call i32 @MP_FATAL(%struct.lavfi* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %64 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %63, i32 0, i32 4
  %65 = call i32 @mp_frame_unref(%struct.TYPE_6__* %64)
  br label %66

66:                                               ; preds = %55, %46, %39, %24
  %67 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %68 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @mp_frame_is_data(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %66
  %74 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %75 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %81 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %80, i32 0, i32 4
  %82 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %83 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @is_format_ok(i64 %85, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %79
  %91 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %92 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %97 = load %struct.lavfi_pad*, %struct.lavfi_pad** %4, align 8
  %98 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @MP_VERBOSE(%struct.lavfi* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %90
  %102 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %103 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %105 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %110 = call i32 @send_global_eof(%struct.lavfi* %109)
  br label %111

111:                                              ; preds = %108, %101
  br label %112

112:                                              ; preds = %23, %111, %79, %73, %66
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mp_pin_out_read(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MP_FATAL(%struct.lavfi*, i8*, i32) #1

declare dso_local i32 @mp_frame_type_str(i64) #1

declare dso_local i32 @mp_frame_unref(%struct.TYPE_6__*) #1

declare dso_local i64 @mp_frame_is_data(i64) #1

declare dso_local i32 @is_format_ok(i64, i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.lavfi*, i8*, i32) #1

declare dso_local i32 @send_global_eof(%struct.lavfi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
