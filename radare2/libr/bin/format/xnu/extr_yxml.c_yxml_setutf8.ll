; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/xnu/extr_yxml.c_yxml_setutf8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/xnu/extr_yxml.c_yxml_setutf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @yxml_setutf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yxml_setutf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ule i32 %5, 127
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %3, align 8
  %10 = ptrtoint i8* %8 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @yxml_setchar(i32 %10, i32 %11)
  br label %90

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ule i32 %14, 2047
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = ptrtoint i8* %17 to i32
  %20 = load i32, i32* %4, align 4
  %21 = lshr i32 %20, 6
  %22 = or i32 192, %21
  %23 = call i32 @yxml_setchar(i32 %19, i32 %22)
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = ptrtoint i8* %24 to i32
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 63
  %29 = or i32 128, %28
  %30 = call i32 @yxml_setchar(i32 %26, i32 %29)
  br label %89

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = icmp ule i32 %32, 65535
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  %37 = ptrtoint i8* %35 to i32
  %38 = load i32, i32* %4, align 4
  %39 = lshr i32 %38, 12
  %40 = or i32 224, %39
  %41 = call i32 @yxml_setchar(i32 %37, i32 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  %44 = ptrtoint i8* %42 to i32
  %45 = load i32, i32* %4, align 4
  %46 = lshr i32 %45, 6
  %47 = and i32 %46, 63
  %48 = or i32 128, %47
  %49 = call i32 @yxml_setchar(i32 %44, i32 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  %52 = ptrtoint i8* %50 to i32
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 63
  %55 = or i32 128, %54
  %56 = call i32 @yxml_setchar(i32 %52, i32 %55)
  br label %88

57:                                               ; preds = %31
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  %60 = ptrtoint i8* %58 to i32
  %61 = load i32, i32* %4, align 4
  %62 = lshr i32 %61, 18
  %63 = or i32 240, %62
  %64 = call i32 @yxml_setchar(i32 %60, i32 %63)
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  %67 = ptrtoint i8* %65 to i32
  %68 = load i32, i32* %4, align 4
  %69 = lshr i32 %68, 12
  %70 = and i32 %69, 63
  %71 = or i32 128, %70
  %72 = call i32 @yxml_setchar(i32 %67, i32 %71)
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %3, align 8
  %75 = ptrtoint i8* %73 to i32
  %76 = load i32, i32* %4, align 4
  %77 = lshr i32 %76, 6
  %78 = and i32 %77, 63
  %79 = or i32 128, %78
  %80 = call i32 @yxml_setchar(i32 %75, i32 %79)
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %3, align 8
  %83 = ptrtoint i8* %81 to i32
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 63
  %86 = or i32 128, %85
  %87 = call i32 @yxml_setchar(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %57, %34
  br label %89

89:                                               ; preds = %88, %16
  br label %90

90:                                               ; preds = %89, %7
  %91 = load i8*, i8** %3, align 8
  store i8 0, i8* %91, align 1
  ret void
}

declare dso_local i32 @yxml_setchar(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
