; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_get_macro_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_get_macro_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.macro_params = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.macro_param* }
%struct.strref = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macro_param* (%struct.macro_params*, %struct.strref*)* @get_macro_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macro_param* @get_macro_param(%struct.macro_params* %0, %struct.strref* %1) #0 {
  %3 = alloca %struct.macro_param*, align 8
  %4 = alloca %struct.macro_params*, align 8
  %5 = alloca %struct.strref*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.macro_param*, align 8
  store %struct.macro_params* %0, %struct.macro_params** %4, align 8
  store %struct.strref* %1, %struct.strref** %5, align 8
  %8 = load %struct.macro_params*, %struct.macro_params** %4, align 8
  %9 = icmp ne %struct.macro_params* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.macro_param* null, %struct.macro_param** %3, align 8
  br label %39

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %35, %11
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.macro_params*, %struct.macro_params** %4, align 8
  %15 = getelementptr inbounds %struct.macro_params, %struct.macro_params* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load %struct.macro_params*, %struct.macro_params** %4, align 8
  %21 = getelementptr inbounds %struct.macro_params, %struct.macro_params* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.macro_param*, %struct.macro_param** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %23, i64 %24
  store %struct.macro_param* %25, %struct.macro_param** %7, align 8
  %26 = load %struct.macro_param*, %struct.macro_param** %7, align 8
  %27 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.strref*, %struct.strref** %5, align 8
  %30 = call i64 @strref_cmp_strref(i32* %28, %struct.strref* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load %struct.macro_param*, %struct.macro_param** %7, align 8
  store %struct.macro_param* %33, %struct.macro_param** %3, align 8
  br label %39

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %12

38:                                               ; preds = %12
  store %struct.macro_param* null, %struct.macro_param** %3, align 8
  br label %39

39:                                               ; preds = %38, %32, %10
  %40 = load %struct.macro_param*, %struct.macro_param** %3, align 8
  ret %struct.macro_param* %40
}

declare dso_local i64 @strref_cmp_strref(i32*, %struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
