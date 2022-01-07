; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_BPTreeEnum.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_BPTreeEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Invalid magic in B+ tree: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HLPFILE_BPTreeEnum(i32* %0, i32 (i32*, i8**, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32*, i8**, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 (i32*, i8**, i8*)* %1, i32 (i32*, i8**, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @GET_USHORT(i32* %16, i32 9)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 10555
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @WINE_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %83

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @GET_USHORT(i32* %24, i32 13)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @GET_USHORT(i32* %26, i32 35)
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @GET_USHORT(i32* %28, i32 41)
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 9
  %32 = getelementptr inbounds i32, i32* %31, i64 38
  store i32* %32, i32** %11, align 8
  br label %33

33:                                               ; preds = %37, %23
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %10, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @GET_USHORT(i32* %44, i32 4)
  store i32 %45, i32* %9, align 4
  br label %33

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %75, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 65535
  br i1 %49, label %50, label %83

50:                                               ; preds = %47
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @GET_SHORT(i32* %57, i32 2)
  store i32 %58, i32* %15, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  store i32* %60, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %72, %50
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32 (i32*, i8**, i8*)*, i32 (i32*, i8**, i8*)** %5, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = bitcast i32** %13 to i8**
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 %66(i32* %67, i8** %68, i8* %69)
  %71 = load i32*, i32** %13, align 8
  store i32* %71, i32** %12, align 8
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul i32 %77, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = call i32 @GET_USHORT(i32* %81, i32 6)
  store i32 %82, i32* %9, align 4
  br label %47

83:                                               ; preds = %20, %47
  ret void
}

declare dso_local i32 @GET_USHORT(i32*, i32) #1

declare dso_local i32 @WINE_ERR(i8*, i32) #1

declare dso_local i32 @GET_SHORT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
