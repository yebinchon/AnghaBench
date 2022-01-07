; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_parseTypeString.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_parseTypeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type \22%s\22 does not exist\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"type \22%s\22 is only a shell\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parseTypeString(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_6__* @typeStringToTypeName(i8* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32* @LookupTypeName(i32* null, %struct.TYPE_6__* %14, i32* %15, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = call i32 @TypeNameToString(%struct.TYPE_6__* %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @parser_errposition(i32* null, i32 %32)
  %34 = call i32 @ereport(i32 %24, i32 %33)
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i32, i32* @InvalidOid, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %66

38:                                               ; preds = %4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @GETSTRUCT(i32* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %11, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = call i32 @TypeNameToString(%struct.TYPE_6__* %51)
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @parser_errposition(i32* null, i32 %56)
  %58 = call i32 @ereport(i32 %48, i32 %57)
  br label %59

59:                                               ; preds = %47, %38
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @ReleaseSysCache(i32* %64)
  br label %66

66:                                               ; preds = %59, %35
  ret void
}

declare dso_local %struct.TYPE_6__* @typeStringToTypeName(i8*) #1

declare dso_local i32* @LookupTypeName(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @TypeNameToString(%struct.TYPE_6__*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
