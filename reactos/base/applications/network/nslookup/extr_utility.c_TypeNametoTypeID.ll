; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_TypeNametoTypeID.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/nslookup/extr_utility.c_TypeNametoTypeID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TypeA = common dso_local global i32 0, align 4
@TYPE_A = common dso_local global i32 0, align 4
@TypeNS = common dso_local global i32 0, align 4
@TYPE_NS = common dso_local global i32 0, align 4
@TypeCNAME = common dso_local global i32 0, align 4
@TYPE_CNAME = common dso_local global i32 0, align 4
@TypeSOA = common dso_local global i32 0, align 4
@TYPE_SOA = common dso_local global i32 0, align 4
@TypeSRV = common dso_local global i32 0, align 4
@TYPE_WKS = common dso_local global i32 0, align 4
@TypePTR = common dso_local global i32 0, align 4
@TYPE_PTR = common dso_local global i32 0, align 4
@TypeMX = common dso_local global i32 0, align 4
@TYPE_MX = common dso_local global i32 0, align 4
@TypeAny = common dso_local global i32 0, align 4
@TYPE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TypeNametoTypeID(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @TypeA, align 4
  %6 = load i32, i32* @TypeA, align 4
  %7 = call i32 @strlen(i32 %6)
  %8 = call i32 @strncmp(i32 %4, i32 %5, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @TYPE_A, align 4
  store i32 %11, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @TypeNS, align 4
  %15 = load i32, i32* @TypeNS, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = call i32 @strncmp(i32 %13, i32 %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @TYPE_NS, align 4
  store i32 %20, i32* %2, align 4
  br label %76

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TypeCNAME, align 4
  %24 = load i32, i32* @TypeCNAME, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = call i32 @strncmp(i32 %22, i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @TYPE_CNAME, align 4
  store i32 %29, i32* %2, align 4
  br label %76

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @TypeSOA, align 4
  %33 = load i32, i32* @TypeSOA, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = call i32 @strncmp(i32 %31, i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @TYPE_SOA, align 4
  store i32 %38, i32* %2, align 4
  br label %76

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @TypeSRV, align 4
  %42 = load i32, i32* @TypeSRV, align 4
  %43 = call i32 @strlen(i32 %42)
  %44 = call i32 @strncmp(i32 %40, i32 %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @TYPE_WKS, align 4
  store i32 %47, i32* %2, align 4
  br label %76

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @TypePTR, align 4
  %51 = load i32, i32* @TypePTR, align 4
  %52 = call i32 @strlen(i32 %51)
  %53 = call i32 @strncmp(i32 %49, i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @TYPE_PTR, align 4
  store i32 %56, i32* %2, align 4
  br label %76

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @TypeMX, align 4
  %60 = load i32, i32* @TypeMX, align 4
  %61 = call i32 @strlen(i32 %60)
  %62 = call i32 @strncmp(i32 %58, i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @TYPE_MX, align 4
  store i32 %65, i32* %2, align 4
  br label %76

66:                                               ; preds = %57
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @TypeAny, align 4
  %69 = load i32, i32* @TypeAny, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = call i32 @strncmp(i32 %67, i32 %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @TYPE_ANY, align 4
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %73, %64, %55, %46, %37, %28, %19, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
