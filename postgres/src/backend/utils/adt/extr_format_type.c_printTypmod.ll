; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_format_type.c_printTypmod.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_format_type.c_printTypmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s(%d)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64)* @printTypmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @printTypmod(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @InvalidOid, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* (i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %19)
  store i8* %20, i8** %7, align 8
  br label %30

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @Int32GetDatum(i64 %23)
  %25 = call i32 @OidFunctionCall1(i64 %22, i32 %24)
  %26 = call i8* @DatumGetCString(i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* (i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %21, %16
  %31 = load i8*, i8** %7, align 8
  ret i8* %31
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @psprintf(i8*, i8*, ...) #1

declare dso_local i8* @DatumGetCString(i32) #1

declare dso_local i32 @OidFunctionCall1(i64, i32) #1

declare dso_local i32 @Int32GetDatum(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
