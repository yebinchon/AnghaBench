; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_DropErrorMsgNonExistent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_DropErrorMsgNonExistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dropmsgstrings = type { i8, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32*, i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_SCHEMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"schema \22%s\22 does not exist\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"schema \22%s\22 does not exist, skipping\00", align 1
@dropmsgstringarray = common dso_local global %struct.dropmsgstrings* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8, i32)* @DropErrorMsgNonExistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DropErrorMsgNonExistent(%struct.TYPE_3__* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.dropmsgstrings*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @LookupNamespaceNoError(i32* %15)
  %17 = call i32 @OidIsValid(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_UNDEFINED_SCHEMA, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %28)
  %30 = call i32 @ereport(i32 %23, i32 %29)
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* @NOTICE, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  %37 = call i32 @ereport(i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %22
  br label %95

39:                                               ; preds = %12, %3
  %40 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** @dropmsgstringarray, align 8
  store %struct.dropmsgstrings* %40, %struct.dropmsgstrings** %7, align 8
  br label %41

41:                                               ; preds = %84, %39
  %42 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %43 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %41
  %48 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %49 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 8
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @ERROR, align 4
  %60 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %61 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @errcode(i32 %62)
  %64 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %65 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @errmsg(i8* %66, i32* %69)
  %71 = call i32 @ereport(i32 %59, i32 %70)
  br label %82

72:                                               ; preds = %55
  %73 = load i32, i32* @NOTICE, align 4
  %74 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %75 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @errmsg(i8* %76, i32* %79)
  %81 = call i32 @ereport(i32 %73, i32 %80)
  br label %87

82:                                               ; preds = %58
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %86 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %85, i32 1
  store %struct.dropmsgstrings* %86, %struct.dropmsgstrings** %7, align 8
  br label %41

87:                                               ; preds = %72, %41
  %88 = load %struct.dropmsgstrings*, %struct.dropmsgstrings** %7, align 8
  %89 = getelementptr inbounds %struct.dropmsgstrings, %struct.dropmsgstrings* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 8
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  br label %95

95:                                               ; preds = %87, %38
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @LookupNamespaceNoError(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
