; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_marshall_open.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_open.c_marshall_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i16, i16, i16, i16, i16, i16, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@ERROR_REPARSE = common dso_local global i64 0, align 8
@CP_UTF8 = common dso_local global i32 0, align 4
@ERROR_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"NFS41_OPEN: downcall open_state=0x%p mode %o changeattr 0x%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16*, %struct.TYPE_9__*)* @marshall_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marshall_open(i8* %0, i16* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store i16* %1, i16** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load i16*, i16** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = call i32 @safe_write(i8** %4, i16* %13, i16* %15, i32 2)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %127

20:                                               ; preds = %3
  %21 = load i16*, i16** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = call i32 @safe_write(i8** %4, i16* %21, i16* %23, i32 2)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %127

28:                                               ; preds = %20
  %29 = load i16*, i16** %5, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @safe_write(i8** %4, i16* %29, i16* %31, i32 4)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %127

36:                                               ; preds = %28
  %37 = load i16*, i16** %5, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = call i32 @safe_write(i8** %4, i16* %37, i16* %39, i32 2)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %127

44:                                               ; preds = %36
  %45 = load i16*, i16** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = call i32 @safe_write(i8** %4, i16* %45, i16* %47, i32 2)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %127

52:                                               ; preds = %44
  %53 = load i16*, i16** %5, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = call i32 @safe_write(i8** %4, i16* %53, i16* %55, i32 2)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %127

60:                                               ; preds = %52
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ERROR_REPARSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %116

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i16
  store i16 %74, i16* %9, align 2
  %75 = load i16*, i16** %5, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 5
  %78 = call i32 @safe_write(i8** %4, i16* %75, i16* %77, i32 4)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %127

82:                                               ; preds = %66
  %83 = load i16*, i16** %5, align 8
  %84 = call i32 @safe_write(i8** %4, i16* %83, i16* %9, i32 2)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %127

88:                                               ; preds = %82
  %89 = load i16*, i16** %5, align 8
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = load i16, i16* %9, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp sle i32 %91, %93
  br i1 %94, label %113, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* @CP_UTF8, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = load i16, i16* %9, align 2
  %108 = zext i16 %107 to i64
  %109 = udiv i64 %108, 4
  %110 = trunc i64 %109 to i16
  %111 = call i32 @MultiByteToWideChar(i32 %96, i32 0, i32 %100, i32 %104, i32 %106, i16 zeroext %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %95, %88
  %114 = load i32, i32* @ERROR_BUFFER_OVERFLOW, align 4
  store i32 %114, i32* %7, align 4
  br label %127

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %60
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i16, i16* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i16, i16* %121, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i16, i16* %124, align 2
  %126 = call i32 @dprintf(i32 2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i16 zeroext %119, i16 zeroext %122, i16 zeroext %125)
  br label %127

127:                                              ; preds = %116, %113, %87, %81, %59, %51, %43, %35, %27, %19
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @safe_write(i8**, i16*, i16*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @dprintf(i32, i8*, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
