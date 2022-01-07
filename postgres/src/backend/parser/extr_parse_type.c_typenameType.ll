; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_typenameType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_type.c_typenameType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"type \22%s\22 does not exist\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"type \22%s\22 is only a shell\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @typenameType(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32* @LookupTypeName(i32* %8, %struct.TYPE_6__* %9, i32* %10, i32 0)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = call i32 @TypeNameToString(%struct.TYPE_6__* %18)
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @parser_errposition(i32* %21, i32 %24)
  %26 = call i32 @ereport(i32 %15, i32 %25)
  br label %27

27:                                               ; preds = %14, %3
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @GETSTRUCT(i32* %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = call i32 @TypeNameToString(%struct.TYPE_6__* %38)
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @parser_errposition(i32* %41, i32 %44)
  %46 = call i32 @ereport(i32 %35, i32 %45)
  br label %47

47:                                               ; preds = %34, %27
  %48 = load i32*, i32** %7, align 8
  ret i32* %48
}

declare dso_local i32* @LookupTypeName(i32*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @TypeNameToString(%struct.TYPE_6__*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
