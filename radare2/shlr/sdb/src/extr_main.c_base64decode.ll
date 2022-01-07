; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_base64decode.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_base64decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @base64decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base64decode() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 1, i32* %3, align 4
  %5 = call i64 @stdin_slurp(i32* %2)
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %0
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @sdb_decode(i8* %10, i32* %2)
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** %1, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @write(i32 1, i8* %18, i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i8*, i8** %1, align 8
  %23 = call i32 @free(i8* %22)
  br label %24

24:                                               ; preds = %21, %9
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %24, %0
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @stdin_slurp(i32*) #1

declare dso_local i8* @sdb_decode(i8*, i32*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
