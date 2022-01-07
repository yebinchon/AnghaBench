; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQresStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQresStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"invalid ExecStatusType code\00", align 1
@pgresStatus = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PQresStatus(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = zext i32 %5 to i64
  %7 = icmp uge i64 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i8* @libpq_gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load i8**, i8*** @pgresStatus, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %10, %8
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local i8* @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
