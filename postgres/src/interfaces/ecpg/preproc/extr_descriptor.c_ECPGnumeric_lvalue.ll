; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_ECPGnumeric_lvalue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_descriptor.c_ECPGnumeric_lvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@base_yyout = common dso_local global i32 0, align 4
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"variable \22%s\22 must have a numeric type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ECPGnumeric_lvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ECPGnumeric_lvalue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.variable*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.variable* @find_variable(i8* %4)
  store %struct.variable* %5, %struct.variable** %3, align 8
  %6 = load %struct.variable*, %struct.variable** %3, align 8
  %7 = getelementptr inbounds %struct.variable, %struct.variable* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %15 [
    i32 132, label %11
    i32 135, label %11
    i32 134, label %11
    i32 133, label %11
    i32 128, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 136, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* @base_yyout, align 4
  %14 = call i32 @fputs(i8* %12, i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @PARSE_ERROR, align 4
  %17 = load i32, i32* @ET_ERROR, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @mmerror(i32 %16, i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %15, %11
  ret void
}

declare dso_local %struct.variable* @find_variable(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @mmerror(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
