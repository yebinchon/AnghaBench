; ModuleID = '/home/carl/AnghaBench/netdata/web/api/formatters/extr_json_wrapper.c_rrdr_json_wrapper_end.c'
source_filename = "/home/carl/AnghaBench/netdata/web/api/formatters/extr_json_wrapper.c_rrdr_json_wrapper_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@RRDR_OPTION_GOOGLE_JSON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c",\0A %smin%s: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c",\0A %smax%s: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdr_json_wrapper_end(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  %12 = alloca [2 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 2, i1 false)
  %15 = bitcast [2 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 2, i1 false)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @RRDR_OPTION_GOOGLE_JSON, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 39, i8* %22, align 1
  br label %26

23:                                               ; preds = %5
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 34, i8* %24, align 1
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 34, i8* %25, align 1
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %32 = call i32 @buffer_strcat(i32* %30, i8* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %37 = call i32 @buffer_sprintf(i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @buffer_rrd_value(i32* %38, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %46 = call i32 @buffer_sprintf(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @buffer_rrd_value(i32* %47, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @buffer_strcat(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @buffer_strcat(i32*, i8*) #2

declare dso_local i32 @buffer_sprintf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @buffer_rrd_value(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
