; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_data.c_hex_decode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_data.c_hex_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @hex_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex_decode(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %12, align 8
  br label %19

19:                                               ; preds = %58, %43, %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 13
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33, %28, %23
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %19

46:                                               ; preds = %38
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @get_hex(i32 %50)
  %52 = shl i32 %51, 4
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %10, align 1
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp uge i8* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %80

58:                                               ; preds = %46
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %8, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 @get_hex(i32 %62)
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %11, align 1
  %65 = load i8, i8* %10, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* %11, align 1
  %68 = sext i8 %67 to i32
  %69 = or i32 %66, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  store i8 %70, i8* %71, align 1
  br label %19

73:                                               ; preds = %19
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %57
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @get_hex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
