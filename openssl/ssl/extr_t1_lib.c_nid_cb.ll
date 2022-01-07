; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_nid_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_nid_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@NID_undef = common dso_local global i32 0, align 4
@MAX_GROUPLIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @nid_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nid_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  %14 = load i32, i32* @NID_undef, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

18:                                               ; preds = %3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_GROUPLIST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %88

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 19
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %88

29:                                               ; preds = %25
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %38 = call i32 @EC_curve_nist2nid(i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NID_undef, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %44 = call i32 @OBJ_sn2nid(i8* %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %29
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @NID_undef, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %51 = call i32 @OBJ_ln2nid(i8* %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @NID_undef, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %88

57:                                               ; preds = %52
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %88

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %58

78:                                               ; preds = %58
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %87, align 4
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %78, %73, %56, %28, %24, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @EC_curve_nist2nid(i8*) #1

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
