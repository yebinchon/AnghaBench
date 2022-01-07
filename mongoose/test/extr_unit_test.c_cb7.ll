; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb7.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.http_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@MG_EV_HTTP_REPLY = common dso_local global i32 0, align 4
@g_argv_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"file %s, size %d; got %d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_EV_RECV = common dso_local global i32 0, align 4
@LL_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb7(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.http_message*
  store %struct.http_message* %12, %struct.http_message** %7, align 8
  %13 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %14 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %10, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MG_EV_HTTP_REPLY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %3
  %21 = load i32, i32* @g_argv_0, align 4
  %22 = call i8* @read_file(i32 %21, i64* %8)
  store i8* %22, i8** %9, align 8
  %23 = load i32, i32* @g_argv_0, align 4
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.http_message*, %struct.http_message** %7, align 8
  %27 = getelementptr inbounds %struct.http_message, %struct.http_message* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DBG(i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %20
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.http_message*, %struct.http_message** %7, align 8
  %39 = getelementptr inbounds %struct.http_message, %struct.http_message* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.http_message*, %struct.http_message** %7, align 8
  %45 = getelementptr inbounds %struct.http_message, %struct.http_message* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @memcmp(i32 %47, i8* %48, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @strcpy(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %58

55:                                               ; preds = %43, %36, %20
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @strcpy(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %62 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %63 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %72

66:                                               ; preds = %3
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MG_EV_RECV, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %71, %58
  ret void
}

declare dso_local i8* @read_file(i32, i64*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
