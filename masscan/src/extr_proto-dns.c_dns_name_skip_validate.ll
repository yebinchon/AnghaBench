; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_dns_name_skip_validate.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_dns_name_skip_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @dns_name_skip_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_name_skip_validate(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add i32 %16, 2
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %89, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp uge i32 %19, 255
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %90

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %90

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 192
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %29
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 192
  %42 = icmp ne i32 %41, 192
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %90

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 1
  %48 = load i32, i32* %8, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %90

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 63
  %60 = shl i32 %59, 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %60, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = icmp ugt i32 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %52
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %90

74:                                               ; preds = %52
  br label %89

75:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %90

80:                                               ; preds = %75
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, 1
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 1
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %80, %74
  br label %18

90:                                               ; preds = %78, %72, %50, %43, %27, %21
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
