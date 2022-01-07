; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_smells_like_valid_packet.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rawsock-pcapfile.c_smells_like_valid_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @smells_like_valid_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smells_like_valid_packet(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %147

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = call i32 @PCAP32(i32 %23, i8* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = call i32 @PCAP32(i32 %27, i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 @PCAP32(i32 %31, i8* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 12
  %38 = call i32 @PCAP32(i32 %35, i8* %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ugt i32 %39, 1342177280
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %147

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = icmp ult i32 %43, 637534208
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %147

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = icmp ugt i32 %47, 1000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %147

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = icmp ugt i32 %51, 10000
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %147

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = icmp ult i32 %55, 16
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %147

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %147

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = icmp ugt i32 %64, 10000
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %147

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = add i32 %68, 16
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %123

72:                                               ; preds = %67
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = getelementptr inbounds i8, i8* %76, i64 16
  store i8* %77, i8** %18, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i8*, i8** %18, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = call i32 @PCAP32(i32 %78, i8* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i8*, i8** %18, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  %85 = call i32 @PCAP32(i32 %82, i8* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** %18, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 8
  %89 = call i32 @PCAP32(i32 %86, i8* %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i8*, i8** %18, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 12
  %93 = call i32 @PCAP32(i32 %90, i8* %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ugt i32 %94, 1342177280
  br i1 %95, label %96, label %97

96:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %147

97:                                               ; preds = %72
  %98 = load i32, i32* %14, align 4
  %99 = icmp ult i32 %98, 637534208
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %147

101:                                              ; preds = %97
  %102 = load i32, i32* %15, align 4
  %103 = icmp ugt i32 %102, 1000000
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %147

105:                                              ; preds = %101
  %106 = load i32, i32* %17, align 4
  %107 = icmp ugt i32 %106, 10000
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %147

109:                                              ; preds = %105
  %110 = load i32, i32* %17, align 4
  %111 = icmp ult i32 %110, 16
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %147

113:                                              ; preds = %109
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %147

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  %120 = icmp ugt i32 %119, 10000
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %147

122:                                              ; preds = %118
  store i32 1, i32* %5, align 4
  br label %147

123:                                              ; preds = %67
  %124 = load i32, i32* %9, align 4
  switch i32 %124, label %145 [
    i32 1, label %125
  ]

125:                                              ; preds = %123
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 12
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 13
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 14
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 69
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i32 1, i32* %5, align 4
  br label %147

144:                                              ; preds = %137, %131, %125
  br label %145

145:                                              ; preds = %144, %123
  br label %146

146:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %143, %122, %121, %117, %112, %108, %104, %100, %96, %66, %62, %57, %53, %49, %45, %41, %21
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @PCAP32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
