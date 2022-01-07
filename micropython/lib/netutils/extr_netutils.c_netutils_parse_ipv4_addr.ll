; ModuleID = '/home/carl/AnghaBench/micropython/lib/netutils/extr_netutils.c_netutils_parse_ipv4_addr.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/netutils/extr_netutils.c_netutils_parse_ipv4_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETUTILS_IPV4ADDR_BUFSIZE = common dso_local global i32 0, align 4
@NETUTILS_LITTLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"invalid arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netutils_parse_ipv4_addr(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @mp_obj_str_get_data(i32 %13, i64* %7)
  store i8* %14, i8** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @NETUTILS_IPV4ADDR_BUFSIZE, align 4
  %20 = call i32 @memset(i32* %18, i32 0, i32 %19)
  br label %98

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %10, align 8
  store i32 3, i32* %11, align 4
  br label %26

26:                                               ; preds = %95, %21
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 46
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i1 [ false, %27 ], [ %35, %31 ]
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 %39, 10
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 %40, %43
  %45 = sub nsw i32 %44, 48
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  br label %27

49:                                               ; preds = %36
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @NETUTILS_LITTLE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %68

59:                                               ; preds = %49
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @NETUTILS_IPV4ADDR_BUFSIZE, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %53
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %98

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %11, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 46
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  br label %93

91:                                               ; preds = %83, %79, %76
  %92 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  br label %26

98:                                               ; preds = %75, %17
  ret void
}

declare dso_local i8* @mp_obj_str_get_data(i32, i64*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
