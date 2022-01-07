; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_rdp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_rdp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.RDPSTUFF }
%struct.RDPSTUFF = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type opaque

@PROTO_HEUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @rdp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.RDPSTUFF*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %21 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %22 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 16777215
  store i32 %24, i32* %15, align 4
  %25 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %26 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store %struct.RDPSTUFF* %27, %struct.RDPSTUFF** %16, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @UNUSEDPARM(i8* %28)
  %30 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %31 = bitcast %struct.Banner1* %30 to i8*
  %32 = call i32 @UNUSEDPARM(i8* %31)
  %33 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %34 = bitcast %struct.InteractiveData* %33 to i8*
  %35 = call i32 @UNUSEDPARM(i8* %34)
  store i64 0, i64* %17, align 8
  br label %36

36:                                               ; preds = %155, %7
  %37 = load i64, i64* %17, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %158

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %18, align 1
  %45 = load i32, i32* %15, align 4
  %46 = and i32 %45, 15
  switch i32 %46, label %153 [
    i32 0, label %47
    i32 1, label %61
    i32 2, label %64
    i32 3, label %72
    i32 4, label %102
    i32 5, label %146
  ]

47:                                               ; preds = %40
  %48 = load i8, i8* %18, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  store i32 5, i32* %15, align 4
  %52 = load i64, i64* %17, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %17, align 8
  br label %60

54:                                               ; preds = %47
  %55 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %56 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %58 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  store i32 1, i32* %15, align 4
  br label %60

60:                                               ; preds = %54, %51
  br label %154

61:                                               ; preds = %40
  %62 = load i32, i32* %15, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %154

64:                                               ; preds = %40
  %65 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %66 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %69 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %154

72:                                               ; preds = %40
  %73 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %74 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = load i8, i8* %18, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %81 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %83 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  store i32 5, i32* %15, align 4
  br label %101

87:                                               ; preds = %72
  %88 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %89 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %15, align 4
  br label %100

93:                                               ; preds = %87
  %94 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %95 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 4
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %93, %92
  br label %101

101:                                              ; preds = %100, %86
  br label %154

102:                                              ; preds = %40
  %103 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %104 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %19, align 8
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %17, align 8
  %110 = sub i64 %108, %109
  %111 = icmp uge i64 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* %17, align 8
  %115 = sub i64 %113, %114
  store i64 %115, i64* %19, align 8
  br label %116

116:                                              ; preds = %112, %102
  %117 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %118 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load i64, i64* %17, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i64, i64* %19, align 8
  %123 = call i64 @cotp_parse(%struct.BannerOutput* %117, %struct.RDPSTUFF* %118, i8* %121, i64 %122)
  store i64 %123, i64* %20, align 8
  %124 = load i64, i64* %20, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i64, i64* %20, align 8
  %129 = sub i64 %128, 1
  %130 = load i64, i64* %17, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %20, align 8
  %133 = trunc i64 %132 to i16
  %134 = zext i16 %133 to i32
  %135 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %136 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.RDPSTUFF*, %struct.RDPSTUFF** %16, align 8
  %140 = getelementptr inbounds %struct.RDPSTUFF, %struct.RDPSTUFF* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %116
  store i32 4, i32* %15, align 4
  br label %145

144:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %143
  br label %154

146:                                              ; preds = %40
  %147 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %148 = load i32, i32* @PROTO_HEUR, align 4
  %149 = load i8*, i8** %11, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @banout_append(%struct.BannerOutput* %147, i32 %148, i8* %149, i64 %150)
  %152 = load i64, i64* %12, align 8
  store i64 %152, i64* %17, align 8
  br label %154

153:                                              ; preds = %40
  br label %154

154:                                              ; preds = %153, %146, %145, %101, %64, %61, %60
  br label %155

155:                                              ; preds = %154
  %156 = load i64, i64* %17, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %17, align 8
  br label %36

158:                                              ; preds = %36
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %161 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i64 @cotp_parse(%struct.BannerOutput*, %struct.RDPSTUFF*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
