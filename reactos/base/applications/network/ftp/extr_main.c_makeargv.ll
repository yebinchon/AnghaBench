; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_makeargv.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_main.c_makeargv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@margc = common dso_local global i64 0, align 8
@margv = common dso_local global i8** null, align 8
@line = common dso_local global i32 0, align 4
@stringbase = common dso_local global i32 0, align 4
@argbuf = common dso_local global i32 0, align 4
@argbase = common dso_local global i32 0, align 4
@slrflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makeargv() #0 {
  %1 = alloca i8**, align 8
  store i64 0, i64* @margc, align 8
  %2 = load i8**, i8*** @margv, align 8
  store i8** %2, i8*** %1, align 8
  %3 = load i32, i32* @line, align 4
  store i32 %3, i32* @stringbase, align 4
  %4 = load i32, i32* @argbuf, align 4
  store i32 %4, i32* @argbase, align 4
  store i64 0, i64* @slrflag, align 8
  br label %5

5:                                                ; preds = %12, %0
  %6 = call i32 (...) @slurpstring()
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = load i8**, i8*** %1, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %10, i8*** %1, align 8
  store i8* %8, i8** %9, align 8
  %11 = icmp ne i8* %8, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i64, i64* @margc, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @margc, align 8
  br label %5

15:                                               ; preds = %5
  ret void
}

declare dso_local i32 @slurpstring(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
