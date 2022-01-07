; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_rd_word.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80z80asm.c_rd_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@readword = common dso_local global i8* null, align 8
@mem_delimiter = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8)* @rd_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_word(i8** %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @delspc(i8* %7)
  %9 = load i8**, i8*** %4, align 8
  store i8* %8, i8** %9, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** @readword, align 8
  %19 = load i8, i8* %5, align 1
  store i8 %19, i8* @mem_delimiter, align 1
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8, i8* %5, align 1
  %22 = call i32 @skipword(i8** %20, i8 signext %21)
  store i32 1, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i8* @delspc(i8*) #1

declare dso_local i32 @skipword(i8**, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
