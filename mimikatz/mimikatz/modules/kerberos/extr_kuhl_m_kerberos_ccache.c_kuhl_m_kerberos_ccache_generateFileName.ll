; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ccache.c_kuhl_m_kerberos_ccache_generateFileName.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ccache.c_kuhl_m_kerberos_ccache_generateFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i32] [i32 37, i32 117, i32 45, i32 37, i32 48, i32 56, i32 120, i32 45, i32 37, i32 119, i32 90, i32 64, i32 37, i32 119, i32 90, i32 45, i32 37, i32 119, i32 90, i32 46, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 37, i32 117, i32 45, i32 37, i32 48, i32 56, i32 120, i32 46, i32 37, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kuhl_m_kerberos_ccache_generateFileName(i32 %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 4096, i64* %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = call i32 @kuhl_m_kerberos_ticket_isLongFilename(%struct.TYPE_8__* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @LPTR, align 4
  %13 = load i64, i64* %8, align 8
  %14 = mul i64 %13, 4
  %15 = call i64 @LocalAlloc(i32 %12, i64 %14)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %73

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = bitcast i32* %33 to i8*
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 (i32*, i64, i8*, i32, i32, i8*, ...) @swprintf_s(i32* %22, i64 %23, i8* bitcast ([23 x i32]* @.str to i8*), i32 %24, i32 %27, i8* %34, i32* %40, i32* %46, i8* %47)
  %49 = icmp sgt i64 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %62

51:                                               ; preds = %18
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 (i32*, i64, i8*, i32, i32, i8*, ...) @swprintf_s(i32* %52, i64 %53, i8* bitcast ([11 x i32]* @.str.1 to i8*), i32 %54, i32 %57, i8* %58)
  %60 = icmp sgt i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %51, %21
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @kull_m_file_cleanFilename(i32* %66)
  br label %72

68:                                               ; preds = %62
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @LocalFree(i32* %69)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %72, %3
  %74 = load i32*, i32** %7, align 8
  ret i32* %74
}

declare dso_local i32 @kuhl_m_kerberos_ticket_isLongFilename(%struct.TYPE_8__*) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i64 @swprintf_s(i32*, i64, i8*, i32, i32, i8*, ...) #1

declare dso_local i32 @kull_m_file_cleanFilename(i32*) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
