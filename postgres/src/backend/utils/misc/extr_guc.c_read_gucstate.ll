; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_read_gucstate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_read_gucstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"incomplete GUC state\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"could not find null terminator in GUC state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8*)* @read_gucstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_gucstate(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp uge i8* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %31, %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ false, %19 ], [ %27, %23 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  br label %19

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp uge i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8**, i8*** %3, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** %5, align 8
  ret i8* %45
}

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
