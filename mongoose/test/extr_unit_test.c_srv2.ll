; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_srv2.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_srv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64, i32 }
%struct.http_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@srv2.c1 = internal global i32 0, align 4
@srv2.c2 = internal global i32 0, align 4
@MG_F_DELETE_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"unit_test.c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @srv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srv2(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.http_message*
  store %struct.http_message* %13, %struct.http_message** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %59 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %34
  ]

15:                                               ; preds = %3
  %16 = call i32 @cs_md5_init(i32* @srv2.c1)
  %17 = call i32 @cs_md5_init(i32* @srv2.c2)
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.http_message*, %struct.http_message** %7, align 8
  %20 = getelementptr inbounds %struct.http_message, %struct.http_message* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.http_message*, %struct.http_message** %7, align 8
  %25 = getelementptr inbounds %struct.http_message, %struct.http_message* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cs_md5_update(i32* @srv2.c1, i8* %23, i64 %27)
  %29 = load i32, i32* @MG_F_DELETE_CHUNK, align 4
  %30 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %31 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %59

34:                                               ; preds = %3
  %35 = call i8* @read_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %10)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @cs_md5_update(i32* @srv2.c2, i8* %39, i64 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @free(i8* %43)
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %46 = call i32 @cs_md5_final(i8* %45, i32* @srv2.c1)
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %48 = call i32 @cs_md5_final(i8* %47, i32* @srv2.c2)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %51 = call i32 @memcmp(i8* %49, i8* %50, i32 16)
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 2
  %55 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %56 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %3, %42, %18, %15
  ret void
}

declare dso_local i32 @cs_md5_init(i32*) #1

declare dso_local i32 @cs_md5_update(i32*, i8*, i64) #1

declare dso_local i8* @read_file(i8*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cs_md5_final(i8*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
