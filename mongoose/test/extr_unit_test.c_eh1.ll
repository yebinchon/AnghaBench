; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_eh1.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_eh1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i64, i32*, %struct.mbuf }
%struct.mbuf = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%d %s there\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"connect failed! %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%sok!\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NOT \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @eh1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eh1(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 3
  store %struct.mbuf* %10, %struct.mbuf** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %85 [
    i32 129, label %12
    i32 128, label %32
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.mg_connection*, i8*, i32, ...) @mg_printf(%struct.mg_connection* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %31

24:                                               ; preds = %12
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %24, %18
  br label %86

32:                                               ; preds = %3
  %33 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %34 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.mg_connection*, i8*, i32, ...) @mg_printf(%struct.mg_connection* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mbuf_remove(%struct.mbuf* %43, i32 %46)
  br label %84

48:                                               ; preds = %32
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %55 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcmp(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %62, %53
  %69 = phi i1 [ false, %53 ], [ %67, %62 ]
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %71)
  %73 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %74 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @DBG(i8* %76)
  %78 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %79 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %80 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %68, %48
  br label %84

84:                                               ; preds = %83, %37
  br label %86

85:                                               ; preds = %3
  br label %86

86:                                               ; preds = %85, %84, %31
  ret void
}

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i32, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @mbuf_remove(%struct.mbuf*, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
