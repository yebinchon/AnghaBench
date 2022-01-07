; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_lavc_conv.c_disable_styles.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_lavc_conv.c_disable_styles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }

@.str = private unnamed_addr constant [9 x i8] c"\0AStyle: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @disable_styles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_styles(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = bitcast %struct.TYPE_8__* %3 to { i8*, i64 }*
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 0
  store i8* %0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 8
  %10 = call { i8*, i64 } @bstr0(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast %struct.TYPE_8__* %4 to { i8*, i64 }*
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i8*, i64 } %10, 0
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i8*, i64 } %10, 1
  store i64 %15, i64* %14, align 8
  br label %16

16:                                               ; preds = %35, %2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = bitcast %struct.TYPE_8__* %3 to { i8*, i64 }*
  %22 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = bitcast %struct.TYPE_8__* %4 to { i8*, i64 }*
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @bstr_find(i8* %23, i64 %25, i8* %28, i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %60

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 35, i8* %41, align 1
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %43, %45
  %47 = bitcast %struct.TYPE_8__* %3 to { i8*, i64 }*
  %48 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %47, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call { i8*, i64 } @bstr_cut(i8* %49, i64 %51, i64 %46)
  %53 = bitcast %struct.TYPE_8__* %6 to { i8*, i64 }*
  %54 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { i8*, i64 } %52, 0
  store i8* %55, i8** %54, align 8
  %56 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { i8*, i64 } %52, 1
  store i64 %57, i64* %56, align 8
  %58 = bitcast %struct.TYPE_8__* %3 to i8*
  %59 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  br label %16

60:                                               ; preds = %34, %16
  ret void
}

declare dso_local { i8*, i64 } @bstr0(i8*) #1

declare dso_local i32 @bstr_find(i8*, i64, i8*, i64) #1

declare dso_local { i8*, i64 } @bstr_cut(i8*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
