; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_vm.c_envadjust.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_vm.c_envadjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i64, %struct.REnv* }
%struct.REnv = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i64)* @envadjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envadjust(%struct.TYPE_6__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.REnv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %151

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %136, %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ule %struct.TYPE_7__* %25, %30
  br i1 %31, label %32, label %151

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.REnv*, %struct.REnv** %34, align 8
  store %struct.REnv* %35, %struct.REnv** %10, align 8
  %36 = load %struct.REnv*, %struct.REnv** %10, align 8
  %37 = icmp ne %struct.REnv* %36, null
  br i1 %37, label %38, label %73

38:                                               ; preds = %32
  %39 = load %struct.REnv*, %struct.REnv** %10, align 8
  %40 = call i64 @MRB_ENV_STACK_SHARED_P(%struct.REnv* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %38
  %43 = load %struct.REnv*, %struct.REnv** %10, align 8
  %44 = getelementptr inbounds %struct.REnv, %struct.REnv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ule i32* %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = icmp ult i32* %52, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.REnv*, %struct.REnv** %10, align 8
  %59 = getelementptr inbounds %struct.REnv, %struct.REnv* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load %struct.REnv*, %struct.REnv** %10, align 8
  %72 = getelementptr inbounds %struct.REnv, %struct.REnv* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  br label %73

73:                                               ; preds = %57, %51, %47, %42, %38, %32
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %136

78:                                               ; preds = %73
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @MRB_PROC_ENV_P(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %136

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load %struct.REnv*, %struct.REnv** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call %struct.REnv* @MRB_PROC_ENV(i64 %90)
  %92 = icmp ne %struct.REnv* %87, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %84
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.REnv* @MRB_PROC_ENV(i64 %96)
  store %struct.REnv* %97, %struct.REnv** %10, align 8
  %98 = load %struct.REnv*, %struct.REnv** %10, align 8
  %99 = icmp ne %struct.REnv* %98, null
  br i1 %99, label %100, label %135

100:                                              ; preds = %93
  %101 = load %struct.REnv*, %struct.REnv** %10, align 8
  %102 = call i64 @MRB_ENV_STACK_SHARED_P(%struct.REnv* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %135

104:                                              ; preds = %100
  %105 = load %struct.REnv*, %struct.REnv** %10, align 8
  %106 = getelementptr inbounds %struct.REnv, %struct.REnv* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  store i32* %107, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %135

109:                                              ; preds = %104
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = icmp ule i32* %110, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %109
  %114 = load i32*, i32** %11, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = icmp ult i32* %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  %120 = load %struct.REnv*, %struct.REnv** %10, align 8
  %121 = getelementptr inbounds %struct.REnv, %struct.REnv* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = ptrtoint i32* %122 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %13, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load %struct.REnv*, %struct.REnv** %10, align 8
  %134 = getelementptr inbounds %struct.REnv, %struct.REnv* %133, i32 0, i32 0
  store i32* %132, i32** %134, align 8
  br label %135

135:                                              ; preds = %119, %113, %109, %104, %100, %93
  br label %136

136:                                              ; preds = %135, %84, %78, %73
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = ptrtoint i32* %140 to i64
  %143 = ptrtoint i32* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 4
  %146 = getelementptr inbounds i32, i32* %137, i64 %145
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 1
  store %struct.TYPE_7__* %150, %struct.TYPE_7__** %9, align 8
  br label %24

151:                                              ; preds = %22, %24
  ret void
}

declare dso_local i64 @MRB_ENV_STACK_SHARED_P(%struct.REnv*) #1

declare dso_local i64 @MRB_PROC_ENV_P(i64) #1

declare dso_local %struct.REnv* @MRB_PROC_ENV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
