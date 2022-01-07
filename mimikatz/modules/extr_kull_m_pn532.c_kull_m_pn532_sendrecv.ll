; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_sendrecv.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_sendrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 (i32*, i32, i32*, i32*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@PN532_MAX_LEN = common dso_local global i32 0, align 4
@PN532_Host_PN532 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 53, i32 51, i32 50, i32 62, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [8 x i32] [i32 80, i32 78, i32 53, i32 51, i32 50, i32 60, i32 32, i32 0], align 4
@PN532_PN532_Host = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i32] [i32 82, i32 101, i32 99, i32 118, i32 32, i32 67, i32 67, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 44, i32 32, i32 101, i32 120, i32 112, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [48 x i32] [i32 82, i32 101, i32 99, i32 118, i32 32, i32 84, i32 70, i32 73, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 44, i32 32, i32 101, i32 120, i32 112, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [31 x i32] [i32 99, i32 98, i32 79, i32 117, i32 116, i32 32, i32 61, i32 32, i32 37, i32 104, i32 117, i32 32, i32 40, i32 110, i32 111, i32 116, i32 32, i32 108, i32 111, i32 110, i32 103, i32 32, i32 101, i32 110, i32 111, i32 117, i32 103, i32 104, i32 41, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [32 x i32] [i32 112, i32 110, i32 53, i32 51, i32 50, i32 95, i32 99, i32 109, i32 100, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 101, i32 118, i32 101, i32 110, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [39 x i32] [i32 99, i32 98, i32 73, i32 110, i32 32, i32 61, i32 32, i32 37, i32 104, i32 117, i32 32, i32 47, i32 32, i32 99, i32 98, i32 79, i32 117, i32 116, i32 32, i32 61, i32 32, i32 37, i32 104, i32 117, i32 32, i32 40, i32 109, i32 97, i32 120, i32 32, i32 105, i32 115, i32 32, i32 37, i32 104, i32 117, i32 41, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [17 x i32] [i32 78, i32 111, i32 32, i32 99, i32 111, i32 109, i32 109, i32 117, i32 110, i32 105, i32 99, i32 97, i32 116, i32 111, i32 114, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pn532_sendrecv(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @PN532_MAX_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 2
  store i32 %24, i32* %16, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 2
  store i32 %27, i32* %17, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64 (i32*, i32, i32*, i32*, i32)*, i64 (i32*, i32, i32*, i32*, i32)** %29, align 8
  %31 = icmp ne i64 (i32*, i32, i32*, i32*, i32)* %30, null
  br i1 %31, label %32, label %140

32:                                               ; preds = %6
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = mul nuw i64 4, %20
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %134

37:                                               ; preds = %32
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = mul nuw i64 4, %20
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %134

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %130, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @PN532_Host_PN532, align 4
  %48 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %47, i32* %48, align 16
  %49 = load i32, i32* %8, align 4
  %50 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = getelementptr inbounds i32, i32* %22, i64 2
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @RtlCopyMemory(i32* %54, i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = call i32 @kprintf(i8* bitcast ([8 x i32]* @.str to i8*))
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @kull_m_string_wprintf_hex(i32* %22, i32 %65, i32 1)
  %67 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64 (i32*, i32, i32*, i32*, i32)*, i64 (i32*, i32, i32*, i32*, i32)** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 %71(i32* %22, i32 %72, i32* %22, i32* %17, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %129

78:                                               ; preds = %68
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = call i32 @kprintf(i8* bitcast ([8 x i32]* @.str.2 to i8*))
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @kull_m_string_wprintf_hex(i32* %22, i32 %85, i32 1)
  %87 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %17, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %125

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %92, 2
  %94 = load i32*, i32** %12, align 8
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds i32, i32* %22, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = load i32, i32* @PN532_PN532_Host, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %91
  %100 = getelementptr inbounds i32, i32* %22, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %13, align 4
  br i1 %104, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %22, i64 2
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @RtlCopyMemory(i32* %107, i32* %108, i32 %110)
  br label %118

112:                                              ; preds = %99
  %113 = getelementptr inbounds i32, i32* %22, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  %117 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.3 to i8*), i32 %114, i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  br label %124

119:                                              ; preds = %91
  %120 = getelementptr inbounds i32, i32* %22, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = load i32, i32* @PN532_PN532_Host, align 4
  %123 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([48 x i32]* @.str.4 to i8*), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %118
  br label %128

125:                                              ; preds = %88
  %126 = load i32, i32* %17, align 4
  %127 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([31 x i32]* @.str.5 to i8*), i32 %126)
  br label %128

128:                                              ; preds = %125, %124
  br label %129

129:                                              ; preds = %128, %68
  br label %133

130:                                              ; preds = %42
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([32 x i32]* @.str.6 to i8*), i32 %131)
  br label %133

133:                                              ; preds = %130, %129
  br label %139

134:                                              ; preds = %37, %32
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %17, align 4
  %137 = mul nuw i64 4, %20
  %138 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([39 x i32]* @.str.7 to i8*), i32 %135, i32 %136, i64 %137)
  br label %139

139:                                              ; preds = %134, %133
  br label %142

140:                                              ; preds = %6
  %141 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([17 x i32]* @.str.8 to i8*))
  br label %142

142:                                              ; preds = %140, %139
  %143 = load i32, i32* %13, align 4
  %144 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %144)
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #2

declare dso_local i32 @kprintf(i8*) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
