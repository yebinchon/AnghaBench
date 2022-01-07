; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_groupprops.c_GetTextSid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/usrmgr/extr_groupprops.c_GetTextSid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@SID_REVISION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"S-%lu-\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"0x%02hx%02hx%02hx%02hx%02hx%02hx\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-%lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @GetTextSid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetTextSid(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* @SID_REVISION, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_3__* @GetSidIdentifierAuthority(i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64* @GetSidSubAuthorityCount(i32 %14)
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @TEXT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %8, align 8
  %20 = call i64 (i64, i32, i64, ...) @wsprintf(i64 %17, i32 %18, i64 %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %27, %2
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @lstrlen(i64 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @TEXT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = call i64 (i64, i32, i64, ...) @wsprintf(i64 %38, i32 %39, i64 %45, i32 %50, i32 %55, i32 %60, i32 %65, i32 %70)
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %113

74:                                               ; preds = %27
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @lstrlen(i64 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i32 @TEXT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %85, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 16
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %93, %100
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 24
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %101, %108
  %110 = call i64 (i64, i32, i64, ...) @wsprintf(i64 %78, i32 %79, i64 %109)
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %74, %34
  store i64 0, i64* %9, align 8
  br label %114

114:                                              ; preds = %130, %113
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %7, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* %10, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @TEXT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* %4, align 4
  %124 = load i64, i64* %9, align 8
  %125 = call i64* @GetSidSubAuthority(i32 %123, i64 %124)
  %126 = load i64, i64* %125, align 8
  %127 = call i64 (i64, i32, i64, ...) @wsprintf(i64 %121, i32 %122, i64 %126)
  %128 = load i64, i64* %10, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %118
  %131 = load i64, i64* %9, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %9, align 8
  br label %114

133:                                              ; preds = %114
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_3__* @GetSidIdentifierAuthority(i32) #1

declare dso_local i64* @GetSidSubAuthorityCount(i32) #1

declare dso_local i64 @wsprintf(i64, i32, i64, ...) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i64 @lstrlen(i64) #1

declare dso_local i64* @GetSidSubAuthority(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
