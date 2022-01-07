; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_write_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }
%struct.ep_param = type { i32, i8*, i8*, i64, i64, i64 }
%struct.darray = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"uniform \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[%u]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, %struct.ep_param*, %struct.darray*)* @ep_write_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_write_param(%struct.dstr* %0, %struct.ep_param* %1, %struct.darray* %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca %struct.ep_param*, align 8
  %6 = alloca %struct.darray*, align 8
  %7 = alloca %struct.dstr, align 4
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store %struct.ep_param* %1, %struct.ep_param** %5, align 8
  store %struct.darray* %2, %struct.darray** %6, align 8
  %8 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %9 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %64

13:                                               ; preds = %3
  %14 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %15 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.dstr*, %struct.dstr** %4, align 8
  %20 = call i32 @dstr_cat(%struct.dstr* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %36

21:                                               ; preds = %13
  %22 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %23 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %28 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @dstr_init_copy(%struct.dstr* %7, i8* %29)
  %31 = load %struct.darray*, %struct.darray** %6, align 8
  %32 = call i32 @darray_push_back(i32 4, %struct.darray* %31, %struct.dstr* %7)
  %33 = load %struct.dstr*, %struct.dstr** %4, align 8
  %34 = call i32 @dstr_cat(%struct.dstr* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %26, %21
  br label %36

36:                                               ; preds = %35, %18
  %37 = load %struct.dstr*, %struct.dstr** %4, align 8
  %38 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %39 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @dstr_cat(%struct.dstr* %37, i8* %40)
  %42 = load %struct.dstr*, %struct.dstr** %4, align 8
  %43 = call i32 @dstr_cat(%struct.dstr* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.dstr*, %struct.dstr** %4, align 8
  %45 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %46 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @dstr_cat(%struct.dstr* %44, i8* %47)
  %49 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %50 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %36
  %54 = load %struct.dstr*, %struct.dstr** %4, align 8
  %55 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %56 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dstr_catf(%struct.dstr* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %53, %36
  %60 = load %struct.dstr*, %struct.dstr** %4, align 8
  %61 = call i32 @dstr_cat(%struct.dstr* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %63 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %59, %12
  ret void
}

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local i32 @darray_push_back(i32, %struct.darray*, %struct.dstr*) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
