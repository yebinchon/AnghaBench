; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_main.c_upload_fname.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_main.c_upload_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32* }
%struct.mg_str = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"SL:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i8* } (%struct.mg_connection*, i32, i8*)* @upload_fname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i8* } @upload_fname(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_str, align 8
  %5 = alloca %struct.mg_str, align 8
  %6 = alloca %struct.mg_connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.mg_str* %5 to { i32, i8* }*
  %10 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %9, i32 0, i32 0
  store i32 %1, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %9, i32 0, i32 1
  store i8* %2, i8** %11, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %6, align 8
  %12 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @memcpy(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i8* %19, i8* %21, i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 3, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %32 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %3
  %36 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %37 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = ptrtoint i32* %38 to i64
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @fs_slfs_set_file_size(i8* %44, i64 %45)
  br label %47

47:                                               ; preds = %42, %35
  br label %48

48:                                               ; preds = %47, %3
  %49 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 4
  %52 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = bitcast %struct.mg_str* %4 to { i32, i8* }*
  %56 = load { i32, i8* }, { i32, i8* }* %55, align 8
  ret { i32, i8* } %56
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fs_slfs_set_file_size(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
