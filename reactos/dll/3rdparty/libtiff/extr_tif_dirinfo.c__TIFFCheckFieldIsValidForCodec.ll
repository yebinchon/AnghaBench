; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFCheckFieldIsValidForCodec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirinfo.c__TIFFCheckFieldIsValidForCodec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_TIFFCheckFieldIsValidForCodec(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 128, label %7
    i32 130, label %7
    i32 134, label %7
    i32 135, label %7
    i32 132, label %7
    i32 136, label %7
    i32 137, label %7
    i32 133, label %7
    i32 131, label %7
    i32 142, label %7
    i32 141, label %7
    i32 140, label %7
    i32 139, label %7
    i32 138, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %84

9:                                                ; preds = %7
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %83 [
    i32 152, label %14
    i32 149, label %19
    i32 145, label %20
    i32 151, label %21
    i32 155, label %22
    i32 150, label %27
    i32 159, label %31
    i32 158, label %31
    i32 161, label %31
    i32 160, label %31
    i32 156, label %51
    i32 157, label %52
    i32 162, label %52
    i32 148, label %57
    i32 147, label %62
    i32 146, label %62
    i32 153, label %63
    i32 143, label %68
    i32 154, label %73
    i32 144, label %78
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 128
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %84

18:                                               ; preds = %14
  br label %83

19:                                               ; preds = %9
  br label %83

20:                                               ; preds = %9
  br label %83

21:                                               ; preds = %9
  br label %83

22:                                               ; preds = %9
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %84

26:                                               ; preds = %22
  br label %83

27:                                               ; preds = %9
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %30 [
    i32 134, label %29
    i32 135, label %29
    i32 132, label %29
    i32 136, label %29
    i32 137, label %29
    i32 133, label %29
    i32 131, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  store i32 1, i32* %3, align 4
  br label %84

30:                                               ; preds = %27
  br label %83

31:                                               ; preds = %9, %9, %9, %9
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %50 [
    i32 142, label %33
    i32 141, label %33
    i32 140, label %33
    i32 139, label %34
    i32 138, label %42
  ]

33:                                               ; preds = %31, %31, %31
  store i32 1, i32* %3, align 4
  br label %84

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 161
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %84

41:                                               ; preds = %34
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 160
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %84

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %31, %49, %41
  br label %83

51:                                               ; preds = %9
  br label %83

52:                                               ; preds = %9, %9
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %84

56:                                               ; preds = %52
  br label %83

57:                                               ; preds = %9
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 128
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %84

61:                                               ; preds = %57
  br label %83

62:                                               ; preds = %9, %9
  br label %83

63:                                               ; preds = %9
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 128
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %84

67:                                               ; preds = %63
  br label %83

68:                                               ; preds = %9
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %84

72:                                               ; preds = %68
  br label %83

73:                                               ; preds = %9
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %3, align 4
  br label %84

77:                                               ; preds = %73
  br label %83

78:                                               ; preds = %9
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %84

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %9, %82, %77, %72, %67, %62, %61, %56, %51, %50, %30, %26, %21, %20, %19, %18
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %81, %76, %71, %66, %60, %55, %48, %40, %33, %29, %25, %17, %8
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
