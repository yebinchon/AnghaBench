; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_guess_and_set_vobsub_name.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_guess_and_set_vobsub_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"vobsub\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s?%.*s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%.*s.sub\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Assuming associated .sub file: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sub_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demuxer*, i32**)* @guess_and_set_vobsub_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guess_and_set_vobsub_name(%struct.demuxer* %0, i32** %1) #0 {
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %3, align 8
  store i32** %1, i32*** %4, align 8
  %11 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %12 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = call i32 @matches_avinputformat_name(%struct.TYPE_3__* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %71

18:                                               ; preds = %2
  %19 = call i8* @talloc_new(i32* null)
  store i8* %19, i8** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bstr0(i32 %22)
  store i32 %23, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @mp_is_url(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @bstr_split_tok(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %10)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @replace_idx_ext(i8* %32, i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @BSTR_P(i32 %40)
  %42 = call i8* (i8*, i8*, i8*, ...) @talloc_asprintf(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %41)
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @replace_idx_ext(i8* %49, i32 %50)
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @BSTR_P(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i8* (i8*, i8*, i8*, ...) @talloc_asprintf(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %55, %52
  %63 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @MP_VERBOSE(%struct.demuxer* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %64)
  %66 = load i32**, i32*** %4, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @av_dict_set(i32** %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %67, i32 0)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @talloc_free(i8* %69)
  br label %71

71:                                               ; preds = %62, %17
  ret void
}

declare dso_local i32 @matches_avinputformat_name(%struct.TYPE_3__*, i8*) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i64 @mp_is_url(i32) #1

declare dso_local i64 @bstr_split_tok(i32, i8*, i32*, i32*) #1

declare dso_local i8* @replace_idx_ext(i8*, i32) #1

declare dso_local i8* @talloc_asprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.demuxer*, i8*, i8*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
