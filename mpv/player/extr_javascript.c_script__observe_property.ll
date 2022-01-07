; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__observe_property.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_script__observe_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@MPV_FORMAT_NONE = common dso_local global i32 0, align 4
@MPV_FORMAT_NODE = common dso_local global i32 0, align 4
@MPV_FORMAT_FLAG = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i32 0, align 4
@MPV_FORMAT_DOUBLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"observe type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @script__observe_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @script__observe_property(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [6 x i8*], align 16
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 48, i1 false)
  %8 = bitcast i8* %7 to [6 x i8*]*
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* %8, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %15 = load i32, i32* @MPV_FORMAT_NONE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @MPV_FORMAT_NODE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @MPV_FORMAT_FLAG, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @MPV_FORMAT_STRING, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @MPV_FORMAT_DOUBLE, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 0
  %26 = call i64 @checkopt(i32* %24, i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @jclient(i32* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @jsL_checkuint64(i32* %31, i32 1)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @js_tostring(i32* %33, i32 2)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mpv_observe_property(i32 %30, i32 %32, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @push_status(i32* %37, i32 %38)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @checkopt(i32*, i32, i8*, i8**, i8*) #2

declare dso_local i32 @mpv_observe_property(i32, i32, i32, i32) #2

declare dso_local i32 @jclient(i32*) #2

declare dso_local i32 @jsL_checkuint64(i32*, i32) #2

declare dso_local i32 @js_tostring(i32*, i32) #2

declare dso_local i32 @push_status(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
