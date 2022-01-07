; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_check_indicator.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_variable.c_check_indicator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGtype = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ECPGtype*, %struct.ECPGstruct_member* }
%struct.ECPGstruct_member = type { %struct.ECPGtype*, %struct.ECPGstruct_member* }

@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"indicator variable must have an integer type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_indicator(%struct.ECPGtype* %0) #0 {
  %2 = alloca %struct.ECPGtype*, align 8
  %3 = alloca %struct.ECPGstruct_member*, align 8
  store %struct.ECPGtype* %0, %struct.ECPGtype** %2, align 8
  %4 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %5 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %30 [
    i32 134, label %7
    i32 137, label %7
    i32 136, label %7
    i32 135, label %7
    i32 128, label %7
    i32 131, label %7
    i32 130, label %7
    i32 129, label %7
    i32 133, label %8
    i32 132, label %8
    i32 138, label %25
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  br label %34

8:                                                ; preds = %1, %1
  %9 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %10 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %11, align 8
  store %struct.ECPGstruct_member* %12, %struct.ECPGstruct_member** %3, align 8
  br label %13

13:                                               ; preds = %20, %8
  %14 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %3, align 8
  %15 = icmp ne %struct.ECPGstruct_member* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %3, align 8
  %18 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %17, i32 0, i32 0
  %19 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  call void @check_indicator(%struct.ECPGtype* %19)
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %3, align 8
  %22 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %21, i32 0, i32 1
  %23 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %22, align 8
  store %struct.ECPGstruct_member* %23, %struct.ECPGstruct_member** %3, align 8
  br label %13

24:                                               ; preds = %13
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.ECPGtype*, %struct.ECPGtype** %2, align 8
  %27 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ECPGtype*, %struct.ECPGtype** %28, align 8
  call void @check_indicator(%struct.ECPGtype* %29)
  br label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @PARSE_ERROR, align 4
  %32 = load i32, i32* @ET_ERROR, align 4
  %33 = call i32 @mmerror(i32 %31, i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %25, %24, %7
  ret void
}

declare dso_local i32 @mmerror(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
