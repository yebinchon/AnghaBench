; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_struct.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }
%struct.ep_struct = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, %struct.ep_struct*)* @ep_write_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_write_struct(%struct.dstr* %0, %struct.ep_struct* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca %struct.ep_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store %struct.ep_struct* %1, %struct.ep_struct** %4, align 8
  %6 = load %struct.ep_struct*, %struct.ep_struct** %4, align 8
  %7 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = load %struct.dstr*, %struct.dstr** %3, align 8
  %13 = call i32 @dstr_cat(%struct.dstr* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dstr*, %struct.dstr** %3, align 8
  %15 = load %struct.ep_struct*, %struct.ep_struct** %4, align 8
  %16 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @dstr_cat(%struct.dstr* %14, i8* %17)
  %19 = load %struct.dstr*, %struct.dstr** %3, align 8
  %20 = call i32 @dstr_cat(%struct.dstr* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %41, %11
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.ep_struct*, %struct.ep_struct** %4, align 8
  %24 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.dstr*, %struct.dstr** %3, align 8
  %30 = call i32 @dstr_cat(%struct.dstr* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.dstr*, %struct.dstr** %3, align 8
  %32 = load %struct.ep_struct*, %struct.ep_struct** %4, align 8
  %33 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %35, %36
  %38 = call i32 @ep_write_var(%struct.dstr* %31, i64 %37)
  %39 = load %struct.dstr*, %struct.dstr** %3, align 8
  %40 = call i32 @dstr_cat(%struct.dstr* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load %struct.dstr*, %struct.dstr** %3, align 8
  %46 = call i32 @dstr_cat(%struct.dstr* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.ep_struct*, %struct.ep_struct** %4, align 8
  %48 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @ep_write_var(%struct.dstr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
