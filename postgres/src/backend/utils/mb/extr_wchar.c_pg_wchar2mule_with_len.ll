; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_wchar2mule_with_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_wchar2mule_with_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCPRV1_A = common dso_local global i32 0, align 4
@LCPRV1_B = common dso_local global i32 0, align 4
@LCPRV2_A = common dso_local global i32 0, align 4
@LCPRV2_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @pg_wchar2mule_with_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_wchar2mule_with_len(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %170, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %175

18:                                               ; preds = %16
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %8, align 1
  %24 = load i8, i8* %8, align 1
  %25 = call i64 @IS_LC1(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load i8, i8* %8, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  store i8 %34, i8* %35, align 1
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %7, align 4
  br label %170

39:                                               ; preds = %18
  %40 = load i8, i8* %8, align 1
  %41 = call i64 @IS_LC2(i8 zeroext %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i8, i8* %8, align 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 3
  store i32 %61, i32* %7, align 4
  br label %169

62:                                               ; preds = %39
  %63 = load i8, i8* %8, align 1
  %64 = call i64 @IS_LCPRV1_A_RANGE(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i32, i32* @LCPRV1_A, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i8, i8* %8, align 1
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %5, align 8
  store i8 %77, i8* %78, align 1
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 3
  store i32 %81, i32* %7, align 4
  br label %168

82:                                               ; preds = %62
  %83 = load i8, i8* %8, align 1
  %84 = call i64 @IS_LCPRV1_B_RANGE(i8 zeroext %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* @LCPRV1_B, align 4
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i8, i8* %8, align 1
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %5, align 8
  store i8 %91, i8* %92, align 1
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 255
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %5, align 8
  store i8 %97, i8* %98, align 1
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 3
  store i32 %101, i32* %7, align 4
  br label %167

102:                                              ; preds = %82
  %103 = load i8, i8* %8, align 1
  %104 = call i64 @IS_LCPRV2_A_RANGE(i8 zeroext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = load i32, i32* @LCPRV2_A, align 4
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %5, align 8
  store i8 %108, i8* %109, align 1
  %111 = load i8, i8* %8, align 1
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %5, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %5, align 8
  store i8 %118, i8* %119, align 1
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 255
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  store i8 %124, i8* %125, align 1
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 4
  store i32 %128, i32* %7, align 4
  br label %166

129:                                              ; preds = %102
  %130 = load i8, i8* %8, align 1
  %131 = call i64 @IS_LCPRV2_B_RANGE(i8 zeroext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %129
  %134 = load i32, i32* @LCPRV2_B, align 4
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  store i8 %135, i8* %136, align 1
  %138 = load i8, i8* %8, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  store i8 %138, i8* %139, align 1
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 8
  %144 = and i32 %143, 255
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %5, align 8
  store i8 %145, i8* %146, align 1
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 255
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %5, align 8
  store i8 %151, i8* %152, align 1
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 4
  store i32 %155, i32* %7, align 4
  br label %165

156:                                              ; preds = %129
  %157 = load i32*, i32** %4, align 8
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 255
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %5, align 8
  store i8 %160, i8* %161, align 1
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %156, %133
  br label %166

166:                                              ; preds = %165, %106
  br label %167

167:                                              ; preds = %166, %86
  br label %168

168:                                              ; preds = %167, %66
  br label %169

169:                                              ; preds = %168, %43
  br label %170

170:                                              ; preds = %169, %27
  %171 = load i32*, i32** %4, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %4, align 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %6, align 4
  br label %9

175:                                              ; preds = %16
  %176 = load i8*, i8** %5, align 8
  store i8 0, i8* %176, align 1
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i64 @IS_LC1(i8 zeroext) #1

declare dso_local i64 @IS_LC2(i8 zeroext) #1

declare dso_local i64 @IS_LCPRV1_A_RANGE(i8 zeroext) #1

declare dso_local i64 @IS_LCPRV1_B_RANGE(i8 zeroext) #1

declare dso_local i64 @IS_LCPRV2_A_RANGE(i8 zeroext) #1

declare dso_local i64 @IS_LCPRV2_B_RANGE(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
