; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findRangeSubOpclass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_findRangeSubOpclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@BTREE_AM_OID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"operator class \22%s\22 does not accept data type %s\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"data type %s has no default operator class for access method \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"btree\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"You must specify an operator class for the range type or define a default operator class for the subtype.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @findRangeSubOpclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findRangeSubOpclass(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32*, i32** @NIL, align 8
  %9 = icmp ne i32* %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i32, i32* @BTREE_AM_OID, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @get_opclass_oid(i32 %11, i32* %12, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @get_opclass_input_type(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @IsBinaryCoercible(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @NameListToString(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @format_type_be(i32 %26)
  %28 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %27)
  %29 = call i32 @ereport(i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %20, %10
  br label %48

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BTREE_AM_OID, align 4
  %34 = call i32 @GetDefaultOpClass(i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @OidIsValid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @format_type_be(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @errhint(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @ereport(i32 %39, i32 %45)
  br label %47

47:                                               ; preds = %38, %31
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @get_opclass_oid(i32, i32*, i32) #1

declare dso_local i32 @get_opclass_input_type(i32) #1

declare dso_local i32 @IsBinaryCoercible(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i8* @NameListToString(i32*) #1

declare dso_local i8* @format_type_be(i32) #1

declare dso_local i32 @GetDefaultOpClass(i32, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
