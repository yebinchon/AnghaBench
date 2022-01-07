; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_ctx.c_BN_POOL_get.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_ctx.c_BN_POOL_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_5__*, %struct.TYPE_5__* }

@BN_F_BN_POOL_GET = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@BN_CTX_POOL_SIZE = common dso_local global i32 0, align 4
@BN_FLG_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32)* @BN_POOL_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BN_POOL_get(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %2
  %17 = call %struct.TYPE_5__* @OPENSSL_malloc(i32 24)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @BN_F_BN_POOL_GET, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @BNerr(i32 %20, i32 %21)
  store i32* null, i32** %3, align 8
  br label %133

23:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %6, align 8
  br label %27

27:                                               ; preds = %44, %23
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @BN_CTX_POOL_SIZE, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @bn_init(i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BN_FLG_SECURE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @BN_FLG_SECURE, align 4
  %42 = call i32 @BN_set_flags(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  br label %27

47:                                               ; preds = %27
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp eq %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %66, align 8
  br label %79

67:                                               ; preds = %47
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %78, align 8
  br label %79

79:                                               ; preds = %67, %59
  %80 = load i32, i32* @BN_CTX_POOL_SIZE, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %3, align 8
  br label %133

92:                                               ; preds = %2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %102, align 8
  br label %119

103:                                              ; preds = %92
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @BN_CTX_POOL_SIZE, align 4
  %108 = srem i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store %struct.TYPE_5__* %115, %struct.TYPE_5__** %117, align 8
  br label %118

118:                                              ; preds = %110, %103
  br label %119

119:                                              ; preds = %118, %97
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* @BN_CTX_POOL_SIZE, align 4
  %130 = srem i32 %127, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %124, i64 %131
  store i32* %132, i32** %3, align 8
  br label %133

133:                                              ; preds = %119, %79, %19
  %134 = load i32*, i32** %3, align 8
  ret i32* %134
}

declare dso_local %struct.TYPE_5__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @bn_init(i32*) #1

declare dso_local i32 @BN_set_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
