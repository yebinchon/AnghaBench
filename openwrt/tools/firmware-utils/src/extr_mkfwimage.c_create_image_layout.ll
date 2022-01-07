; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkfwimage.c_create_image_layout.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkfwimage.c_create_image_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"board = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"File '%s' too big (0x%08X) - max size: 0x%08X (exceeds %u bytes)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"kernel: %d 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"root: %d 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_8__*)* @create_image_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_image_layout(i8* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 0
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 1
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @filelength(i8* %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = icmp eq i64 %43, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %144

48:                                               ; preds = %3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @strncpy(i32 %61, i8* %62, i32 4)
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @filelength(i8* %64)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %48
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = call i32 @ERROR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %77, i64 %78, i64 %81, i64 %90)
  store i32 -2, i32* %4, align 4
  br label %144

92:                                               ; preds = %48
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strcpy(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 2, i32* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = trunc i64 %106 to i32
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i32 0, i32* %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 4
  store i32 0, i32* %122, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @strncpy(i32 %125, i8* %126, i32 4)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %130, i32 %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64 %137, i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  store i32 2, i32* %143, align 8
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %92, %76, %47
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @filelength(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @ERROR(i8*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
