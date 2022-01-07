; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_replace_idx_ext.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_lavf.c_replace_idx_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"IDX\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%.*s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*)* @replace_idx_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @replace_idx_ext(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = bitcast %struct.TYPE_5__* %5 to { i32, i8* }*
  %9 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %8, i32 0, i32 0
  store i32 %1, i32* %9, align 8
  %10 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %8, i32 0, i32 1
  store i8* %2, i8** %10, align 8
  store i8* %0, i8** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 46
  br i1 %24, label %25, label %26

25:                                               ; preds = %14, %3
  store i8* null, i8** %4, align 8
  br label %46

26:                                               ; preds = %14
  %27 = bitcast %struct.TYPE_5__* %5 to { i32, i8* }*
  %28 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %27, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @bstr_endswith0(i32 %29, i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast %struct.TYPE_5__* %5 to { i32, i8* }*
  %38 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %37, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @bstr_splice(i32 %39, i8* %41, i32 0, i32 -4)
  %43 = call i32 @BSTR_P(i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @talloc_asprintf(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %43, i8* %44)
  store i8* %45, i8** %4, align 8
  br label %46

46:                                               ; preds = %26, %25
  %47 = load i8*, i8** %4, align 8
  ret i8* %47
}

declare dso_local i64 @bstr_endswith0(i32, i8*, i8*) #1

declare dso_local i8* @talloc_asprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i32 @bstr_splice(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
