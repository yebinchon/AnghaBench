; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_canal.c_esilbreak_mem_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_canal.c_esilbreak_mem_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@UT64_MAX = common dso_local global i64 0, align 8
@esilbreak_last_read = common dso_local global i64 0, align 8
@mycore = common dso_local global %struct.TYPE_8__* null, align 8
@esilbreak_last_data = common dso_local global i64 0, align 8
@ntarget = common dso_local global i64 0, align 8
@R_ANAL_REF_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64*, i32)* @esilbreak_mem_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esilbreak_mem_read(%struct.TYPE_7__* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @UT64_MAX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* @esilbreak_last_read, align 8
  br label %18

18:                                               ; preds = %16, %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @myvalid(i32 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @r_io_read_at(i32 %28, i64 %29, i64* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %145

34:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %62 [
    i32 2, label %36
    i32 4, label %45
    i32 8, label %54
  ]

36:                                               ; preds = %34
  %37 = load i64*, i64** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @r_read_ble16(i64* %37, i32 %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  store i64 %44, i64* @esilbreak_last_data, align 8
  br label %70

45:                                               ; preds = %34
  %46 = load i64*, i64** %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @r_read_ble32(i64* %46, i32 %51)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %10, align 8
  store i64 %53, i64* @esilbreak_last_data, align 8
  br label %70

54:                                               ; preds = %34
  %55 = load i64*, i64** %7, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @r_read_ble64(i64* %55, i32 %60)
  store i64 %61, i64* %10, align 8
  store i64 %61, i64* @esilbreak_last_data, align 8
  br label %70

62:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %6, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @r_io_read_at(i32 %65, i64 %66, i64* %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %54, %45, %36
  store i32 0, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %119

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i64 @myvalid(i32 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %73
  %81 = load i64, i64* @ntarget, align 8
  %82 = load i64, i64* @UT64_MAX, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* @ntarget, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %84, %80
  %89 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %89, align 16
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 0
  %95 = call i32 @r_io_read_at(i32 %92, i64 %93, i64* %94, i32 1024)
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %98, align 16
  store i32 0, i32* %12, align 4
  br label %117

99:                                               ; preds = %88
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* @R_ANAL_REF_TYPE_DATA, align 4
  %108 = call i32 @r_anal_xrefs_set(i32 %102, i32 %105, i64 %106, i32 %107)
  %109 = getelementptr inbounds [128 x i64], [128 x i64]* %9, i64 0, i64 1023
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @add_string_ref(%struct.TYPE_8__* %110, i32 %113, i64 %114)
  %116 = load i64, i64* @UT64_MAX, align 8
  store i64 %116, i64* @esilbreak_last_data, align 8
  store i32 1, i32* %12, align 4
  br label %117

117:                                              ; preds = %99, %97
  br label %118

118:                                              ; preds = %117, %84
  br label %119

119:                                              ; preds = %118, %73, %70
  %120 = load i64, i64* @ntarget, align 8
  %121 = load i64, i64* @UT64_MAX, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %134, label %123

123:                                              ; preds = %119
  %124 = load i64, i64* @ntarget, align 8
  %125 = load i64, i64* %6, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* @ntarget, align 8
  %129 = load i64, i64* @UT64_MAX, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %131, %123, %119
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mycore, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i32, i32* @R_ANAL_REF_TYPE_DATA, align 4
  %143 = call i32 @r_anal_xrefs_set(i32 %137, i32 %140, i64 %141, i32 %142)
  br label %144

144:                                              ; preds = %134, %131, %127
  br label %145

145:                                              ; preds = %144, %25, %18
  ret i32 0
}

declare dso_local i64 @myvalid(i32, i64) #1

declare dso_local i32 @r_io_read_at(i32, i64, i64*, i32) #1

declare dso_local i32 @r_read_ble16(i64*, i32) #1

declare dso_local i32 @r_read_ble32(i64*, i32) #1

declare dso_local i64 @r_read_ble64(i64*, i32) #1

declare dso_local i32 @r_anal_xrefs_set(i32, i32, i64, i32) #1

declare dso_local i32 @add_string_ref(%struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
