; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocessor_add_def.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocessor_add_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_def = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Token $1 already defined\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Previous definition of $1 is here\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_preprocessor_add_def(%struct.cf_preprocessor* %0, %struct.cf_def* %1) #0 {
  %3 = alloca %struct.cf_preprocessor*, align 8
  %4 = alloca %struct.cf_def*, align 8
  %5 = alloca %struct.cf_def*, align 8
  %6 = alloca %struct.dstr, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %3, align 8
  store %struct.cf_def* %1, %struct.cf_def** %4, align 8
  %7 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %8 = load %struct.cf_def*, %struct.cf_def** %4, align 8
  %9 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call %struct.cf_def* @cf_preprocess_get_def(%struct.cf_preprocessor* %7, i32* %10)
  store %struct.cf_def* %11, %struct.cf_def** %5, align 8
  %12 = load %struct.cf_def*, %struct.cf_def** %5, align 8
  %13 = icmp ne %struct.cf_def* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.cf_def*, %struct.cf_def** %4, align 8
  %16 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dstr_init_copy_strref(%struct.dstr* %6, i32* %17)
  %19 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %20 = load %struct.cf_def*, %struct.cf_def** %4, align 8
  %21 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cf_addwarning(%struct.cf_preprocessor* %19, %struct.TYPE_2__* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23, i32* null, i32* null)
  %25 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %26 = load %struct.cf_def*, %struct.cf_def** %5, align 8
  %27 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cf_addwarning(%struct.cf_preprocessor* %25, %struct.TYPE_2__* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32* null, i32* null)
  %31 = load %struct.cf_def*, %struct.cf_def** %5, align 8
  %32 = call i32 @cf_def_free(%struct.cf_def* %31)
  %33 = load %struct.cf_def*, %struct.cf_def** %5, align 8
  %34 = load %struct.cf_def*, %struct.cf_def** %4, align 8
  %35 = call i32 @memcpy(%struct.cf_def* %33, %struct.cf_def* %34, i32 4)
  br label %42

36:                                               ; preds = %2
  %37 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %38 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cf_def*, %struct.cf_def** %4, align 8
  %41 = call i32 @da_push_back(i32 %39, %struct.cf_def* %40)
  br label %42

42:                                               ; preds = %36, %14
  ret void
}

declare dso_local %struct.cf_def* @cf_preprocess_get_def(%struct.cf_preprocessor*, i32*) #1

declare dso_local i32 @dstr_init_copy_strref(%struct.dstr*, i32*) #1

declare dso_local i32 @cf_addwarning(%struct.cf_preprocessor*, %struct.TYPE_2__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @cf_def_free(%struct.cf_def*) #1

declare dso_local i32 @memcpy(%struct.cf_def*, %struct.cf_def*, i32) #1

declare dso_local i32 @da_push_back(i32, %struct.cf_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
