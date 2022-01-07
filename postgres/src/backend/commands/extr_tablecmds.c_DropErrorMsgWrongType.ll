; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_DropErrorMsgWrongType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_DropErrorMsgWrongType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dropmsgstrings = type { i8, i32, i32 }

@dropmsgstringarray = common dso_local global %struct.dropmsgstrings* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8, i8)* @DropErrorMsgWrongType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DropErrorMsgWrongType(i8* %0, i8 signext %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.dropmsgstrings*, align 8
  %8 = alloca %struct.dropmsgstrings*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** @dropmsgstringarray, align 8
  store %struct.dropmsgstrings* %9, %struct.dropmsgstrings** %7, align 8
  br label %10

10:                                               ; preds = %26, %3
  %11 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %12 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 4
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %18 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 4
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %28 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %27, i32 1
  store %struct.dropmsgstrings* %28, %struct.dropmsgstrings** %7, align 8
  br label %10

29:                                               ; preds = %24, %10
  %30 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %31 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 4
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** @dropmsgstringarray, align 8
  store %struct.dropmsgstrings* %37, %struct.dropmsgstrings** %8, align 8
  br label %38

38:                                               ; preds = %54, %29
  %39 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %8, align 8
  %40 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 4
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %8, align 8
  %46 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 4
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %5, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %8, align 8
  %56 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %55, i32 1
  store %struct.dropmsgstrings* %56, %struct.dropmsgstrings** %8, align 8
  br label %38

57:                                               ; preds = %52, %38
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %62 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @errmsg(i32 %63, i8* %64)
  %66 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %8, align 8
  %67 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 4
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %57
  %72 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %8, align 8
  %73 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @_(i32 %74)
  %76 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %78

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %71
  %79 = phi i32 [ %76, %71 ], [ 0, %77 ]
  %80 = call i32 @ereport(i32 %58, i32 %79)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i32, i8*) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
