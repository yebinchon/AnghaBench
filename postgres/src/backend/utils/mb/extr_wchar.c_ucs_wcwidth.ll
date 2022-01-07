; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_ucs_wcwidth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_ucs_wcwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbinterval = type { i32, i32 }

@ucs_wcwidth.combining = internal constant [190 x %struct.mbinterval] [%struct.mbinterval { i32 768, i32 879 }, %struct.mbinterval { i32 1155, i32 1161 }, %struct.mbinterval { i32 1425, i32 1469 }, %struct.mbinterval { i32 1471, i32 1471 }, %struct.mbinterval { i32 1473, i32 1474 }, %struct.mbinterval { i32 1476, i32 1477 }, %struct.mbinterval { i32 1479, i32 1479 }, %struct.mbinterval { i32 1552, i32 1562 }, %struct.mbinterval { i32 1611, i32 1631 }, %struct.mbinterval { i32 1648, i32 1648 }, %struct.mbinterval { i32 1750, i32 1756 }, %struct.mbinterval { i32 1759, i32 1764 }, %struct.mbinterval { i32 1767, i32 1768 }, %struct.mbinterval { i32 1770, i32 1773 }, %struct.mbinterval { i32 1809, i32 1809 }, %struct.mbinterval { i32 1840, i32 1866 }, %struct.mbinterval { i32 1958, i32 1968 }, %struct.mbinterval { i32 2027, i32 2035 }, %struct.mbinterval { i32 2045, i32 2045 }, %struct.mbinterval { i32 2070, i32 2073 }, %struct.mbinterval { i32 2075, i32 2083 }, %struct.mbinterval { i32 2085, i32 2087 }, %struct.mbinterval { i32 2089, i32 2093 }, %struct.mbinterval { i32 2137, i32 2139 }, %struct.mbinterval { i32 2259, i32 2273 }, %struct.mbinterval { i32 2275, i32 2306 }, %struct.mbinterval { i32 2362, i32 2362 }, %struct.mbinterval { i32 2364, i32 2364 }, %struct.mbinterval { i32 2369, i32 2376 }, %struct.mbinterval { i32 2381, i32 2381 }, %struct.mbinterval { i32 2385, i32 2391 }, %struct.mbinterval { i32 2402, i32 2403 }, %struct.mbinterval { i32 2433, i32 2433 }, %struct.mbinterval { i32 2492, i32 2492 }, %struct.mbinterval { i32 2497, i32 2500 }, %struct.mbinterval { i32 2509, i32 2509 }, %struct.mbinterval { i32 2530, i32 2531 }, %struct.mbinterval { i32 2558, i32 2562 }, %struct.mbinterval { i32 2620, i32 2620 }, %struct.mbinterval { i32 2625, i32 2641 }, %struct.mbinterval { i32 2672, i32 2673 }, %struct.mbinterval { i32 2677, i32 2677 }, %struct.mbinterval { i32 2689, i32 2690 }, %struct.mbinterval { i32 2748, i32 2748 }, %struct.mbinterval { i32 2753, i32 2760 }, %struct.mbinterval { i32 2765, i32 2765 }, %struct.mbinterval { i32 2786, i32 2787 }, %struct.mbinterval { i32 2810, i32 2817 }, %struct.mbinterval { i32 2876, i32 2876 }, %struct.mbinterval { i32 2879, i32 2879 }, %struct.mbinterval { i32 2881, i32 2884 }, %struct.mbinterval { i32 2893, i32 2902 }, %struct.mbinterval { i32 2914, i32 2915 }, %struct.mbinterval { i32 2946, i32 2946 }, %struct.mbinterval { i32 3008, i32 3008 }, %struct.mbinterval { i32 3021, i32 3021 }, %struct.mbinterval { i32 3072, i32 3072 }, %struct.mbinterval { i32 3076, i32 3076 }, %struct.mbinterval { i32 3134, i32 3136 }, %struct.mbinterval { i32 3142, i32 3158 }, %struct.mbinterval { i32 3170, i32 3171 }, %struct.mbinterval { i32 3201, i32 3201 }, %struct.mbinterval { i32 3260, i32 3260 }, %struct.mbinterval { i32 3263, i32 3263 }, %struct.mbinterval { i32 3270, i32 3270 }, %struct.mbinterval { i32 3276, i32 3277 }, %struct.mbinterval { i32 3298, i32 3299 }, %struct.mbinterval { i32 3328, i32 3329 }, %struct.mbinterval { i32 3387, i32 3388 }, %struct.mbinterval { i32 3393, i32 3396 }, %struct.mbinterval { i32 3405, i32 3405 }, %struct.mbinterval { i32 3426, i32 3427 }, %struct.mbinterval { i32 3530, i32 3530 }, %struct.mbinterval { i32 3538, i32 3542 }, %struct.mbinterval { i32 3633, i32 3633 }, %struct.mbinterval { i32 3636, i32 3642 }, %struct.mbinterval { i32 3655, i32 3662 }, %struct.mbinterval { i32 3761, i32 3761 }, %struct.mbinterval { i32 3764, i32 3772 }, %struct.mbinterval { i32 3784, i32 3789 }, %struct.mbinterval { i32 3864, i32 3865 }, %struct.mbinterval { i32 3893, i32 3893 }, %struct.mbinterval { i32 3895, i32 3895 }, %struct.mbinterval { i32 3897, i32 3897 }, %struct.mbinterval { i32 3953, i32 3966 }, %struct.mbinterval { i32 3968, i32 3972 }, %struct.mbinterval { i32 3974, i32 3975 }, %struct.mbinterval { i32 3981, i32 4028 }, %struct.mbinterval { i32 4038, i32 4038 }, %struct.mbinterval { i32 4141, i32 4144 }, %struct.mbinterval { i32 4146, i32 4151 }, %struct.mbinterval { i32 4153, i32 4154 }, %struct.mbinterval { i32 4157, i32 4158 }, %struct.mbinterval { i32 4184, i32 4185 }, %struct.mbinterval { i32 4190, i32 4192 }, %struct.mbinterval { i32 4209, i32 4212 }, %struct.mbinterval { i32 4226, i32 4226 }, %struct.mbinterval { i32 4229, i32 4230 }, %struct.mbinterval { i32 4237, i32 4237 }, %struct.mbinterval { i32 4253, i32 4253 }, %struct.mbinterval { i32 4957, i32 4959 }, %struct.mbinterval { i32 5906, i32 5908 }, %struct.mbinterval { i32 5938, i32 5940 }, %struct.mbinterval { i32 5970, i32 5971 }, %struct.mbinterval { i32 6002, i32 6003 }, %struct.mbinterval { i32 6068, i32 6069 }, %struct.mbinterval { i32 6071, i32 6077 }, %struct.mbinterval { i32 6086, i32 6086 }, %struct.mbinterval { i32 6089, i32 6099 }, %struct.mbinterval { i32 6109, i32 6109 }, %struct.mbinterval { i32 6155, i32 6157 }, %struct.mbinterval { i32 6277, i32 6278 }, %struct.mbinterval { i32 6313, i32 6313 }, %struct.mbinterval { i32 6432, i32 6434 }, %struct.mbinterval { i32 6439, i32 6440 }, %struct.mbinterval { i32 6450, i32 6450 }, %struct.mbinterval { i32 6457, i32 6459 }, %struct.mbinterval { i32 6679, i32 6680 }, %struct.mbinterval { i32 6683, i32 6683 }, %struct.mbinterval { i32 6742, i32 6742 }, %struct.mbinterval { i32 6744, i32 6752 }, %struct.mbinterval { i32 6754, i32 6754 }, %struct.mbinterval { i32 6757, i32 6764 }, %struct.mbinterval { i32 6771, i32 6783 }, %struct.mbinterval { i32 6832, i32 6915 }, %struct.mbinterval { i32 6964, i32 6964 }, %struct.mbinterval { i32 6966, i32 6970 }, %struct.mbinterval { i32 6972, i32 6972 }, %struct.mbinterval { i32 6978, i32 6978 }, %struct.mbinterval { i32 7019, i32 7027 }, %struct.mbinterval { i32 7040, i32 7041 }, %struct.mbinterval { i32 7074, i32 7077 }, %struct.mbinterval { i32 7080, i32 7081 }, %struct.mbinterval { i32 7083, i32 7085 }, %struct.mbinterval { i32 7142, i32 7142 }, %struct.mbinterval { i32 7144, i32 7145 }, %struct.mbinterval { i32 7149, i32 7149 }, %struct.mbinterval { i32 7151, i32 7153 }, %struct.mbinterval { i32 7212, i32 7219 }, %struct.mbinterval { i32 7222, i32 7223 }, %struct.mbinterval { i32 7376, i32 7378 }, %struct.mbinterval { i32 7380, i32 7392 }, %struct.mbinterval { i32 7394, i32 7400 }, %struct.mbinterval { i32 7405, i32 7405 }, %struct.mbinterval { i32 7412, i32 7412 }, %struct.mbinterval { i32 7416, i32 7417 }, %struct.mbinterval { i32 7616, i32 7679 }, %struct.mbinterval { i32 8400, i32 8432 }, %struct.mbinterval { i32 11503, i32 11505 }, %struct.mbinterval { i32 11647, i32 11647 }, %struct.mbinterval { i32 11744, i32 11775 }, %struct.mbinterval { i32 12330, i32 12333 }, %struct.mbinterval { i32 12441, i32 12442 }, %struct.mbinterval { i32 42607, i32 42610 }, %struct.mbinterval { i32 42612, i32 42621 }, %struct.mbinterval { i32 42654, i32 42655 }, %struct.mbinterval { i32 42736, i32 42737 }, %struct.mbinterval { i32 43010, i32 43010 }, %struct.mbinterval { i32 43014, i32 43014 }, %struct.mbinterval { i32 43019, i32 43019 }, %struct.mbinterval { i32 43045, i32 43046 }, %struct.mbinterval { i32 43204, i32 43205 }, %struct.mbinterval { i32 43232, i32 43249 }, %struct.mbinterval { i32 43263, i32 43263 }, %struct.mbinterval { i32 43302, i32 43309 }, %struct.mbinterval { i32 43335, i32 43345 }, %struct.mbinterval { i32 43392, i32 43394 }, %struct.mbinterval { i32 43443, i32 43443 }, %struct.mbinterval { i32 43446, i32 43449 }, %struct.mbinterval { i32 43452, i32 43453 }, %struct.mbinterval { i32 43493, i32 43493 }, %struct.mbinterval { i32 43561, i32 43566 }, %struct.mbinterval { i32 43569, i32 43570 }, %struct.mbinterval { i32 43573, i32 43574 }, %struct.mbinterval { i32 43587, i32 43587 }, %struct.mbinterval { i32 43596, i32 43596 }, %struct.mbinterval { i32 43644, i32 43644 }, %struct.mbinterval { i32 43696, i32 43696 }, %struct.mbinterval { i32 43698, i32 43700 }, %struct.mbinterval { i32 43703, i32 43704 }, %struct.mbinterval { i32 43710, i32 43711 }, %struct.mbinterval { i32 43713, i32 43713 }, %struct.mbinterval { i32 43756, i32 43757 }, %struct.mbinterval { i32 43766, i32 43766 }, %struct.mbinterval { i32 44005, i32 44005 }, %struct.mbinterval { i32 44008, i32 44008 }, %struct.mbinterval { i32 44013, i32 44013 }, %struct.mbinterval { i32 64286, i32 64286 }, %struct.mbinterval { i32 65024, i32 65039 }, %struct.mbinterval { i32 65056, i32 65071 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ucs_wcwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucs_wcwidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 32
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 127
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 160
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 1114111
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %7
  store i32 -1, i32* %2, align 4
  br label %88

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @mbbisearch(i32 %21, %struct.mbinterval* getelementptr inbounds ([190 x %struct.mbinterval], [190 x %struct.mbinterval]* @ucs_wcwidth.combining, i64 0, i64 0), i32 189)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %88

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 4352
  br i1 %27, label %28, label %84

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %29, 4447
  br i1 %30, label %82, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 11904
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = icmp sle i32 %35, 42191
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, -18
  %40 = icmp ne i32 %39, 12298
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 12351
  br i1 %43, label %82, label %44

44:                                               ; preds = %41, %37, %34, %31
  %45 = load i32, i32* %3, align 4
  %46 = icmp sge i32 %45, 44032
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp sle i32 %48, 55203
  br i1 %49, label %82, label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %3, align 4
  %52 = icmp sge i32 %51, 63744
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = icmp sle i32 %54, 64255
  br i1 %55, label %82, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %3, align 4
  %58 = icmp sge i32 %57, 65072
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = icmp sle i32 %60, 65135
  br i1 %61, label %82, label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %3, align 4
  %64 = icmp sge i32 %63, 65280
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = icmp sle i32 %66, 65375
  br i1 %67, label %82, label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %3, align 4
  %70 = icmp sge i32 %69, 65504
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp sle i32 %72, 65510
  br i1 %73, label %82, label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %3, align 4
  %76 = icmp sge i32 %75, 131072
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = icmp sle i32 %78, 196607
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi i1 [ false, %74 ], [ %79, %77 ]
  br label %82

82:                                               ; preds = %80, %71, %65, %59, %53, %47, %41, %28
  %83 = phi i1 [ true, %71 ], [ true, %65 ], [ true, %59 ], [ true, %53 ], [ true, %47 ], [ true, %41 ], [ true, %28 ], [ %81, %80 ]
  br label %84

84:                                               ; preds = %82, %25
  %85 = phi i1 [ false, %25 ], [ %83, %82 ]
  %86 = zext i1 %85 to i32
  %87 = add nsw i32 1, %86
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %24, %19, %6
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @mbbisearch(i32, %struct.mbinterval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
