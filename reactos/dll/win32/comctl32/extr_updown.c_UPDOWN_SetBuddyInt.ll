; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_SetBuddyInt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_updown.c_UPDOWN_SetBuddyInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@UPDOWN_SetBuddyInt.fmt_hex = internal constant [7 x i8] c"0x%04X\00", align 1
@UPDOWN_SetBuddyInt.fmt_dec_oct = internal constant [3 x i8] c"%d\00", align 1
@FLAG_BUDDYINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"set new value(%d) to buddy.\0A\00", align 1
@LB_SETCURSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i64 0, align 8
@UDS_NOTHOUSANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @UPDOWN_SetBuddyInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UPDOWN_SetBuddyInt(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %14 = bitcast [20 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 20, i1 false)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FLAG_BUDDYINT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IsWindow(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %144

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = call i64 @UPDOWN_IsBuddyListbox(%struct.TYPE_4__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LB_SETCURSEL, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @SendMessageW(i32 %40, i32 %41, i32 %44, i32 0)
  %46 = load i64, i64* @LB_ERR, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %144

49:                                               ; preds = %29
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 16
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @UPDOWN_SetBuddyInt.fmt_hex, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @UPDOWN_SetBuddyInt.fmt_dec_oct, i64 0, i64 0)
  store i8* %55, i8** %4, align 8
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wsprintfW(i8* %56, i8* %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %124

66:                                               ; preds = %49
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @UDS_NOTHOUSANDS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %124, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 3
  br i1 %75, label %76, label %124

76:                                               ; preds = %73
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %78 = call i32 @ARRAY_SIZE(i8* %77)
  %79 = zext i32 %78 to i64
  %80 = call i8* @llvm.stacksave()
  store i8* %80, i8** %8, align 8
  %81 = alloca i8, i64 %79, align 16
  store i64 %79, i64* %9, align 8
  store i8* %81, i8** %10, align 8
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  store i8* %82, i8** %11, align 8
  %83 = call signext i8 (...) @UPDOWN_GetThousandSep()
  store i8 %83, i8* %12, align 1
  %84 = load i32, i32* %7, align 4
  %85 = srem i32 %84, 3
  store i32 %85, i32* %13, align 4
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %87 = call i32 @memcpy(i8* %81, i8* %86, i32 20)
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  store i32 3, i32* %13, align 4
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* %13, align 4
  %93 = load i8*, i8** %11, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %11, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %118, %91
  %101 = load i8*, i8** %10, align 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = srem i32 %105, 3
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i8, i8* %12, align 1
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  store i8 %109, i8* %110, align 1
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %10, align 8
  %115 = load i8, i8* %113, align 1
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %100

121:                                              ; preds = %100
  %122 = load i8*, i8** %11, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %124

124:                                              ; preds = %121, %73, %66, %49
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %129 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %130 = call i32 @ARRAY_SIZE(i8* %129)
  %131 = call i32 @GetWindowTextW(i32 %127, i8* %128, i32 %130)
  %132 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %133 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %134 = call i64 @lstrcmpiW(i8* %132, i8* %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %2, align 4
  br label %144

138:                                              ; preds = %124
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %143 = call i32 @SetWindowTextW(i32 %141, i8* %142)
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %138, %136, %37, %27
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IsWindow(i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i64 @UPDOWN_IsBuddyListbox(%struct.TYPE_4__*) #2

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local signext i8 @UPDOWN_GetThousandSep(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @GetWindowTextW(i32, i8*, i32) #2

declare dso_local i64 @lstrcmpiW(i8*, i8*) #2

declare dso_local i32 @SetWindowTextW(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
