; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_parseDNSMSG.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dns/extr_dns.c_parseDNSMSG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseDNSMSG(%struct.dhdr* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dhdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.dhdr* %0, %struct.dhdr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %10, align 8
  %13 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %14 = call i32 @memset(%struct.dhdr* %13, i32 0, i32 56)
  %15 = load i32*, i32** %10, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i8* @get16(i32* %16)
  %18 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %19 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %18, i32 0, i32 11
  store i8* %17, i8** %19, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = call i8* @get16(i32* %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 32768
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %29 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 11
  %33 = and i32 %32, 15
  %34 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %35 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1024
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %41 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 512
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %48 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 256
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %55 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %54, i32 0, i32 4
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %62 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %61, i32 0, i32 5
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 15
  %66 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %67 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = call i8* @get16(i32* %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %73 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  %76 = call i8* @get16(i32* %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %79 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = call i8* @get16(i32* %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %85 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 10
  %88 = call i8* @get16(i32* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %91 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 12
  store i32* %93, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %108, %63
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %97 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = call i32* @dns_question(i32* %101, i32* %102)
  store i32* %103, i32** %11, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  br label %159

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %94

111:                                              ; preds = %94
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %127, %111
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %115 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i32*, i32** %10, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32* @dns_answer(i32* %119, i32* %120, i32* %121)
  store i32* %122, i32** %11, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  br label %159

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %112

130:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %138, %130
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %134 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %131

141:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %149, %141
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %145 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %142

152:                                              ; preds = %142
  %153 = load %struct.dhdr*, %struct.dhdr** %5, align 8
  %154 = getelementptr inbounds %struct.dhdr, %struct.dhdr* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 1, i32* %4, align 4
  br label %159

158:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %157, %125, %106
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @memset(%struct.dhdr*, i32, i32) #1

declare dso_local i8* @get16(i32*) #1

declare dso_local i32* @dns_question(i32*, i32*) #1

declare dso_local i32* @dns_answer(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
