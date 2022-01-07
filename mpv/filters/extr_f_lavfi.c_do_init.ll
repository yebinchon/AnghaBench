; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_do_init.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_lavfi.c_do_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_lavfi = type { i32 }
%struct.lavfi = type { i32, i32, i64, %struct.TYPE_3__*, %struct.mp_lavfi, i64, %struct.lavfi_pad**, %struct.lavfi_pad**, i64 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.lavfi_pad = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"mismatching media type\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"exactly 2 pads required\0A\00", align 1
@MP_PIN_OUT = common dso_local global i64 0, align 8
@MP_PIN_IN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"1 input and 1 output pad required\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_lavfi* (%struct.lavfi*)* @do_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_lavfi* @do_init(%struct.lavfi* %0) #0 {
  %2 = alloca %struct.mp_lavfi*, align 8
  %3 = alloca %struct.lavfi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lavfi_pad*, align 8
  store %struct.lavfi* %0, %struct.lavfi** %3, align 8
  %6 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %7 = call i32 @precreate_graph(%struct.lavfi* %6, i32 1)
  %8 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %9 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %134

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %87, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %17 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %20 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %18, %21
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %27 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %32 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %31, i32 0, i32 7
  %33 = load %struct.lavfi_pad**, %struct.lavfi_pad*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lavfi_pad*, %struct.lavfi_pad** %33, i64 %35
  %37 = load %struct.lavfi_pad*, %struct.lavfi_pad** %36, align 8
  br label %50

38:                                               ; preds = %24
  %39 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %40 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %39, i32 0, i32 6
  %41 = load %struct.lavfi_pad**, %struct.lavfi_pad*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %44 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lavfi_pad*, %struct.lavfi_pad** %41, i64 %47
  %49 = load %struct.lavfi_pad*, %struct.lavfi_pad** %48, align 8
  br label %50

50:                                               ; preds = %38, %30
  %51 = phi %struct.lavfi_pad* [ %37, %30 ], [ %49, %38 ]
  store %struct.lavfi_pad* %51, %struct.lavfi_pad** %5, align 8
  %52 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %53 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.lavfi_pad*, %struct.lavfi_pad** %5, align 8
  %58 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %60 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %59, i32 0, i32 3
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load %struct.lavfi_pad*, %struct.lavfi_pad** %5, align 8
  %63 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lavfi_pad*, %struct.lavfi_pad** %5, align 8
  %66 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mp_filter_add_pin(%struct.TYPE_3__* %61, i32 %64, i32 %67)
  %69 = load %struct.lavfi_pad*, %struct.lavfi_pad** %5, align 8
  %70 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %72 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %50
  %76 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %77 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.lavfi_pad*, %struct.lavfi_pad** %5, align 8
  %80 = getelementptr inbounds %struct.lavfi_pad, %struct.lavfi_pad* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %85 = call i32 @MP_FATAL(%struct.lavfi* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %134

86:                                               ; preds = %75, %50
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %14

90:                                               ; preds = %14
  %91 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %92 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %90
  %96 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %97 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %104 = call i32 @MP_FATAL(%struct.lavfi* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %134

105:                                              ; preds = %95
  %106 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %107 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %106, i32 0, i32 3
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @mp_pin_get_dir(i32 %112)
  %114 = load i64, i64* @MP_PIN_OUT, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %127, label %116

116:                                              ; preds = %105
  %117 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %118 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @mp_pin_get_dir(i32 %123)
  %125 = load i64, i64* @MP_PIN_IN, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %116, %105
  %128 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %129 = call i32 @MP_FATAL(%struct.lavfi* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %134

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %90
  %132 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %133 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %132, i32 0, i32 4
  store %struct.mp_lavfi* %133, %struct.mp_lavfi** %2, align 8
  br label %139

134:                                              ; preds = %127, %102, %83, %12
  %135 = load %struct.lavfi*, %struct.lavfi** %3, align 8
  %136 = getelementptr inbounds %struct.lavfi, %struct.lavfi* %135, i32 0, i32 3
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = call i32 @talloc_free(%struct.TYPE_3__* %137)
  store %struct.mp_lavfi* null, %struct.mp_lavfi** %2, align 8
  br label %139

139:                                              ; preds = %134, %131
  %140 = load %struct.mp_lavfi*, %struct.mp_lavfi** %2, align 8
  ret %struct.mp_lavfi* %140
}

declare dso_local i32 @precreate_graph(%struct.lavfi*, i32) #1

declare dso_local i32 @mp_filter_add_pin(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @MP_FATAL(%struct.lavfi*, i8*) #1

declare dso_local i64 @mp_pin_get_dir(i32) #1

declare dso_local i32 @talloc_free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
