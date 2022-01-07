; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_load_config.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_mp_input_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i64 }

@builtin_input_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"<builtin>\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"input.conf\00", align 1
@m_option_type_string = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_input_load_config(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %9 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %10 = call i32 @input_lock(%struct.input_ctx* %9)
  %11 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %12 = call i32 @reload_opts(%struct.input_ctx* %11, i32 0)
  %13 = load i32, i32* @builtin_input_conf, align 4
  %14 = call i64 @bstr0(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %35, %1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @bstr_getline(i64 %22, %struct.TYPE_11__* %3)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = call i32 @bstr_eatstart0(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @bstr_startswith0(i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @parse_config(%struct.input_ctx* %31, i32 1, i64 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %35

35:                                               ; preds = %30, %20
  br label %16

36:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  %37 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %36
  %44 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %45 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %55 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %56 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @parse_config_file(%struct.input_ctx* %54, i8* %59, i32 1)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %53, %43, %36
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %61
  %65 = call i8* @talloc_new(i32* null)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8** @mp_find_all_config_files(i8* %66, i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8** %70, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %91, %64
  %72 = load i8**, i8*** %7, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i8**, i8*** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br label %81

81:                                               ; preds = %74, %71
  %82 = phi i1 [ false, %71 ], [ %80, %74 ]
  br i1 %82, label %83, label %94

83:                                               ; preds = %81
  %84 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %85 = load i8**, i8*** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @parse_config_file(%struct.input_ctx* %84, i8* %89, i32 0)
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %71

94:                                               ; preds = %81
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @talloc_free(i8* %95)
  br label %97

97:                                               ; preds = %94, %61
  %98 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %99 = call i32 @input_unlock(%struct.input_ctx* %98)
  ret void
}

declare dso_local i32 @input_lock(%struct.input_ctx*) #1

declare dso_local i32 @reload_opts(%struct.input_ctx*, i32) #1

declare dso_local i64 @bstr0(i32) #1

declare dso_local i64 @bstr_getline(i64, %struct.TYPE_11__*) #1

declare dso_local i32 @bstr_eatstart0(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @bstr_startswith0(i64, i8*) #1

declare dso_local i32 @parse_config(%struct.input_ctx*, i32, i64, i8*, i32*) #1

declare dso_local i32 @parse_config_file(%struct.input_ctx*, i8*, i32) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8** @mp_find_all_config_files(i8*, i32, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @input_unlock(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
