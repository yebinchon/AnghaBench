; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/vax/extr_vax-dis.c_print_insn_arg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/vax/extr_vax-dis.c_print_insn_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i64, %struct.TYPE_6__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.TYPE_6__*)* @print_insn_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_insn_arg(i8* %0, i8* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %25 [
    i32 98, label %16
    i32 100, label %17
    i32 102, label %18
    i32 103, label %19
    i32 104, label %20
    i32 108, label %21
    i32 111, label %22
    i32 119, label %23
    i32 113, label %24
  ]

16:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %27

17:                                               ; preds = %4
  store i32 8, i32* %10, align 4
  br label %27

18:                                               ; preds = %4
  store i32 4, i32* %10, align 4
  br label %27

19:                                               ; preds = %4
  store i32 8, i32* %10, align 4
  br label %27

20:                                               ; preds = %4
  store i32 16, i32* %10, align 4
  br label %27

21:                                               ; preds = %4
  store i32 4, i32* %10, align 4
  br label %27

22:                                               ; preds = %4
  store i32 16, i32* %10, align 4
  br label %27

23:                                               ; preds = %4
  store i32 2, i32* %10, align 4
  br label %27

24:                                               ; preds = %4
  store i32 8, i32* %10, align 4
  br label %27

25:                                               ; preds = %4
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 98
  br i1 %32, label %33, label %68

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (i64, %struct.TYPE_6__*)*, i32 (i64, %struct.TYPE_6__*)** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @NEXTBYTE(i8* %44)
  %46 = add nsw i64 %43, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = call i32 %40(i64 %46, %struct.TYPE_6__* %47)
  br label %61

49:                                               ; preds = %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (i64, %struct.TYPE_6__*)*, i32 (i64, %struct.TYPE_6__*)** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 @NEXTWORD(i8* %56)
  %58 = add nsw i64 %55, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = call i32 %52(i64 %58, %struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %49, %37
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %27
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = call i32 @print_insn_mode(i8* %69, i32 %70, i8* %71, i32 %72, %struct.TYPE_6__* %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i64 @NEXTBYTE(i8*) #2

declare dso_local i64 @NEXTWORD(i8*) #2

declare dso_local i32 @print_insn_mode(i8*, i32, i8*, i32, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
