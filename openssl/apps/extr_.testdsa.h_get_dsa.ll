; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_.testdsa.h_get_dsa.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_.testdsa.h_get_dsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_dsa(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %18 [
    i32 512, label %12
    i32 1024, label %14
    i32 2048, label %16
  ]

12:                                               ; preds = %1
  %13 = call i32 @set_dsa_ptr(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %10, i32 512)
  br label %19

14:                                               ; preds = %1
  %15 = call i32 @set_dsa_ptr(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %10, i32 1024)
  br label %19

16:                                               ; preds = %1
  %17 = call i32 @set_dsa_ptr(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %10, i32 2048)
  br label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %94

19:                                               ; preds = %16, %14, %12
  %20 = call i32* (...) @DSA_new()
  store i32* %20, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %94

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @BN_bin2bn(i32 %25, i32 %27, i32* null)
  store i32* %28, i32** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @BN_bin2bn(i32 %30, i32 %32, i32* null)
  store i32* %33, i32** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @BN_bin2bn(i32 %35, i32 %37, i32* null)
  store i32* %38, i32** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @BN_bin2bn(i32 %40, i32 %42, i32* null)
  store i32* %43, i32** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @BN_bin2bn(i32 %45, i32 %47, i32* null)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %23
  %52 = load i32*, i32** %6, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %57, %54, %51, %23
  br label %81

64:                                               ; preds = %60
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @DSA_set0_pqg(i32* %65, i32* %66, i32* %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %81

72:                                               ; preds = %64
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @DSA_set0_key(i32* %73, i32* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %81

79:                                               ; preds = %72
  %80 = load i32*, i32** %4, align 8
  store i32* %80, i32** %2, align 8
  br label %94

81:                                               ; preds = %78, %71, %63
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @DSA_free(i32* %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @BN_free(i32* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @BN_free(i32* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @BN_free(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @BN_free(i32* %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @BN_free(i32* %92)
  store i32* null, i32** %2, align 8
  br label %94

94:                                               ; preds = %81, %79, %22, %18
  %95 = load i32*, i32** %2, align 8
  ret i32* %95
}

declare dso_local i32 @set_dsa_ptr(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8, i32) #1

declare dso_local i32* @DSA_new(...) #1

declare dso_local i32* @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @DSA_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DSA_set0_key(i32*, i32*, i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
