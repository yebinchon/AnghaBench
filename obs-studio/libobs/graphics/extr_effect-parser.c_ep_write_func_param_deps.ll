; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_func_param_deps.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_func_param_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.dstr = type { i32 }
%struct.ep_func = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8** }
%struct.darray = type { i32 }
%struct.ep_param = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*, %struct.dstr*, %struct.ep_func*, %struct.darray*)* @ep_write_func_param_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_write_func_param_deps(%struct.effect_parser* %0, %struct.dstr* %1, %struct.ep_func* %2, %struct.darray* %3) #0 {
  %5 = alloca %struct.effect_parser*, align 8
  %6 = alloca %struct.dstr*, align 8
  %7 = alloca %struct.ep_func*, align 8
  %8 = alloca %struct.darray*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ep_param*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %5, align 8
  store %struct.dstr* %1, %struct.dstr** %6, align 8
  store %struct.ep_func* %2, %struct.ep_func** %7, align 8
  store %struct.darray* %3, %struct.darray** %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i64, i64* %9, align 8
  %14 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %15 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %21 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call %struct.ep_param* @ep_getparam(%struct.effect_parser* %27, i8* %28)
  store %struct.ep_param* %29, %struct.ep_param** %11, align 8
  %30 = load %struct.dstr*, %struct.dstr** %6, align 8
  %31 = load %struct.ep_param*, %struct.ep_param** %11, align 8
  %32 = load %struct.darray*, %struct.darray** %8, align 8
  %33 = call i32 @ep_write_param(%struct.dstr* %30, %struct.ep_param* %31, %struct.darray* %32)
  br label %34

34:                                               ; preds = %19
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %9, align 8
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.ep_func*, %struct.ep_func** %7, align 8
  %39 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.dstr*, %struct.dstr** %6, align 8
  %45 = call i32 @dstr_cat(%struct.dstr* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  ret void
}

declare dso_local %struct.ep_param* @ep_getparam(%struct.effect_parser*, i8*) #1

declare dso_local i32 @ep_write_param(%struct.dstr*, %struct.ep_param*, %struct.darray*) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
