; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyAttributeOutText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyAttributeOutText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @CopyAttributeOutText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyAttributeOutText(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %8, align 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @pg_server_to_any(i8* %19, i32 %21, i32 %24)
  store i8* %25, i8** %5, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %106, %60, %33
  %36 = load i8*, i8** %5, align 8
  %37 = load i8, i8* %36, align 1
  store i8 %37, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %107

40:                                               ; preds = %35
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  switch i32 %46, label %53 [
    i32 8, label %47
    i32 12, label %48
    i32 10, label %49
    i32 13, label %50
    i32 9, label %51
    i32 11, label %52
  ]

47:                                               ; preds = %44
  store i8 98, i8* %7, align 1
  br label %63

48:                                               ; preds = %44
  store i8 102, i8* %7, align 1
  br label %63

49:                                               ; preds = %44
  store i8 110, i8* %7, align 1
  br label %63

50:                                               ; preds = %44
  store i8 114, i8* %7, align 1
  br label %63

51:                                               ; preds = %44
  store i8 116, i8* %7, align 1
  br label %63

52:                                               ; preds = %44
  store i8 118, i8* %7, align 1
  br label %63

53:                                               ; preds = %44
  %54 = load i8, i8* %7, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %63

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  br label %35

63:                                               ; preds = %59, %52, %51, %50, %49, %48, %47
  %64 = call i32 (...) @DUMPSOFAR()
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = call i32 @CopySendChar(%struct.TYPE_4__* %65, i8 signext 92)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = load i8, i8* %7, align 1
  %69 = call i32 @CopySendChar(%struct.TYPE_4__* %67, i8 signext %68)
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %5, align 8
  store i8* %71, i8** %6, align 8
  br label %106

72:                                               ; preds = %40
  %73 = load i8, i8* %7, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 92
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* %8, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76, %72
  %83 = call i32 (...) @DUMPSOFAR()
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = call i32 @CopySendChar(%struct.TYPE_4__* %84, i8 signext 92)
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8* %86, i8** %6, align 8
  br label %105

88:                                               ; preds = %76
  %89 = load i8, i8* %7, align 1
  %90 = call i64 @IS_HIGHBIT_SET(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @pg_encoding_mblen(i32 %95, i8* %96)
  %98 = load i8*, i8** %5, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %5, align 8
  br label %104

101:                                              ; preds = %88
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %5, align 8
  br label %104

104:                                              ; preds = %101, %92
  br label %105

105:                                              ; preds = %104, %82
  br label %106

106:                                              ; preds = %105, %63
  br label %35

107:                                              ; preds = %35
  br label %169

108:                                              ; preds = %28
  %109 = load i8*, i8** %5, align 8
  store i8* %109, i8** %6, align 8
  br label %110

110:                                              ; preds = %167, %135, %108
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %7, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %168

115:                                              ; preds = %110
  %116 = load i8, i8* %7, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp slt i32 %117, 32
  br i1 %118, label %119, label %147

119:                                              ; preds = %115
  %120 = load i8, i8* %7, align 1
  %121 = sext i8 %120 to i32
  switch i32 %121, label %128 [
    i32 8, label %122
    i32 12, label %123
    i32 10, label %124
    i32 13, label %125
    i32 9, label %126
    i32 11, label %127
  ]

122:                                              ; preds = %119
  store i8 98, i8* %7, align 1
  br label %138

123:                                              ; preds = %119
  store i8 102, i8* %7, align 1
  br label %138

124:                                              ; preds = %119
  store i8 110, i8* %7, align 1
  br label %138

125:                                              ; preds = %119
  store i8 114, i8* %7, align 1
  br label %138

126:                                              ; preds = %119
  store i8 116, i8* %7, align 1
  br label %138

127:                                              ; preds = %119
  store i8 118, i8* %7, align 1
  br label %138

128:                                              ; preds = %119
  %129 = load i8, i8* %7, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* %8, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %138

135:                                              ; preds = %128
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %5, align 8
  br label %110

138:                                              ; preds = %134, %127, %126, %125, %124, %123, %122
  %139 = call i32 (...) @DUMPSOFAR()
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = call i32 @CopySendChar(%struct.TYPE_4__* %140, i8 signext 92)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = load i8, i8* %7, align 1
  %144 = call i32 @CopySendChar(%struct.TYPE_4__* %142, i8 signext %143)
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %5, align 8
  store i8* %146, i8** %6, align 8
  br label %167

147:                                              ; preds = %115
  %148 = load i8, i8* %7, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 92
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = load i8, i8* %7, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* %8, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151, %147
  %158 = call i32 (...) @DUMPSOFAR()
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %160 = call i32 @CopySendChar(%struct.TYPE_4__* %159, i8 signext 92)
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %5, align 8
  store i8* %161, i8** %6, align 8
  br label %166

163:                                              ; preds = %151
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %5, align 8
  br label %166

166:                                              ; preds = %163, %157
  br label %167

167:                                              ; preds = %166, %138
  br label %110

168:                                              ; preds = %110
  br label %169

169:                                              ; preds = %168, %107
  %170 = call i32 (...) @DUMPSOFAR()
  ret void
}

declare dso_local i8* @pg_server_to_any(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DUMPSOFAR(...) #1

declare dso_local i32 @CopySendChar(%struct.TYPE_4__*, i8 signext) #1

declare dso_local i64 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i32 @pg_encoding_mblen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
