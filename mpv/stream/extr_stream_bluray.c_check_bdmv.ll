; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_check_bdmv.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_bluray.c_check_bdmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"MovieObject.bdmv\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MOBJ0100\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MOBJ0200\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"MOBJ0300\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_bdmv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_bdmv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @mp_basename(i8* %7)
  %9 = call i64 @strcasecmp(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %54

18:                                               ; preds = %12
  %19 = bitcast [50 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 50, i1 false)
  %20 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fread(i8* %20, i32 50, i32 1, i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fclose(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 50, i32* %27, align 8
  %28 = bitcast %struct.TYPE_3__* %6 to { i8*, i32 }*
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %28, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @bstr_startswith0(i8* %30, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %18
  %36 = bitcast %struct.TYPE_3__* %6 to { i8*, i32 }*
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %36, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @bstr_startswith0(i8* %38, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = bitcast %struct.TYPE_3__* %6 to { i8*, i32 }*
  %45 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %44, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @bstr_startswith0(i8* %46, i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %43, %35, %18
  %52 = phi i1 [ true, %35 ], [ true, %18 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %17, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @mp_basename(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @bstr_startswith0(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
