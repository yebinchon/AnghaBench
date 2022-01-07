; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGfree_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGfree_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGtype = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ECPGtype* }

@.str = private unnamed_addr constant [46 x i8] c"internal error: found multidimensional array\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"internal error: unknown datatype, please report this to <pgsql-bugs@lists.postgresql.org>\00", align 1
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unrecognized variable type code %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECPGfree_type(%struct.ECPGtype* %0) #0 {
  %2 = alloca %struct.ECPGtype*, align 8
  store %struct.ECPGtype* %0, %struct.ECPGtype** %2, align 8
  %3 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %4 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @IS_SIMPLE_TYPE(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %67, label %8

8:                                                ; preds = %1
  %9 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %10 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %59 [
    i32 130, label %12
    i32 129, label %53
    i32 128, label %53
  ]

12:                                               ; preds = %8
  %13 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %14 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %17 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %35 [
    i32 130, label %19
    i32 129, label %21
    i32 128, label %21
  ]

19:                                               ; preds = %12
  %20 = call i32 @base_yyerror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %52

21:                                               ; preds = %12, %12
  %22 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %23 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.ECPGtype*, %struct.ECPGtype** %24, align 8
  %26 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ECPGfree_struct_member(i32 %28)
  %30 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %31 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.ECPGtype*, %struct.ECPGtype** %32, align 8
  %34 = call i32 @free(%struct.ECPGtype* %33)
  br label %52

35:                                               ; preds = %12
  %36 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %37 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.ECPGtype*, %struct.ECPGtype** %38, align 8
  %40 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @IS_SIMPLE_TYPE(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = call i32 @base_yyerror(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %35
  %47 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %48 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.ECPGtype*, %struct.ECPGtype** %49, align 8
  %51 = call i32 @free(%struct.ECPGtype* %50)
  br label %52

52:                                               ; preds = %46, %21, %19
  br label %66

53:                                               ; preds = %8, %8
  %54 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %55 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ECPGfree_struct_member(i32 %57)
  br label %66

59:                                               ; preds = %8
  %60 = load i32, i32* @PARSE_ERROR, align 4
  %61 = load i32, i32* @ET_ERROR, align 4
  %62 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %63 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @mmerror(i32 %60, i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %59, %53, %52
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %69 = call i32 @free(%struct.ECPGtype* %68)
  ret void
}

declare dso_local i32 @IS_SIMPLE_TYPE(i32) #1

declare dso_local i32 @base_yyerror(i8*) #1

declare dso_local i32 @ECPGfree_struct_member(i32) #1

declare dso_local i32 @free(%struct.ECPGtype*) #1

declare dso_local i32 @mmerror(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
