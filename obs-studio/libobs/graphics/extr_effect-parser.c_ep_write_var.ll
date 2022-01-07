; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_var.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }
%struct.ep_var = type { i64, i8*, i8*, i8* }

@EP_VAR_INOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"inout \00", align 1
@EP_VAR_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"out \00", align 1
@EP_VAR_UNIFORM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"uniform \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, %struct.ep_var*)* @ep_write_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_write_var(%struct.dstr* %0, %struct.ep_var* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca %struct.ep_var*, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store %struct.ep_var* %1, %struct.ep_var** %4, align 8
  %5 = load %struct.ep_var*, %struct.ep_var** %4, align 8
  %6 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EP_VAR_INOUT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.dstr*, %struct.dstr** %3, align 8
  %12 = call i32 @dstr_cat(%struct.dstr* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.ep_var*, %struct.ep_var** %4, align 8
  %15 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EP_VAR_OUT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.dstr*, %struct.dstr** %3, align 8
  %21 = call i32 @dstr_cat(%struct.dstr* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %32

22:                                               ; preds = %13
  %23 = load %struct.ep_var*, %struct.ep_var** %4, align 8
  %24 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EP_VAR_UNIFORM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.dstr*, %struct.dstr** %3, align 8
  %30 = call i32 @dstr_cat(%struct.dstr* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %10
  %34 = load %struct.dstr*, %struct.dstr** %3, align 8
  %35 = load %struct.ep_var*, %struct.ep_var** %4, align 8
  %36 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @dstr_cat(%struct.dstr* %34, i8* %37)
  %39 = load %struct.dstr*, %struct.dstr** %3, align 8
  %40 = call i32 @dstr_cat(%struct.dstr* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.dstr*, %struct.dstr** %3, align 8
  %42 = load %struct.ep_var*, %struct.ep_var** %4, align 8
  %43 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @dstr_cat(%struct.dstr* %41, i8* %44)
  %46 = load %struct.ep_var*, %struct.ep_var** %4, align 8
  %47 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %33
  %51 = load %struct.dstr*, %struct.dstr** %3, align 8
  %52 = call i32 @dstr_cat(%struct.dstr* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.dstr*, %struct.dstr** %3, align 8
  %54 = load %struct.ep_var*, %struct.ep_var** %4, align 8
  %55 = getelementptr inbounds %struct.ep_var, %struct.ep_var* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @dstr_cat(%struct.dstr* %53, i8* %56)
  br label %58

58:                                               ; preds = %50, %33
  ret void
}

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
