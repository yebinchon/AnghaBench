; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-memcached.c_memcached_tcp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-memcached.c_memcached_tcp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.Banner1 = type opaque
%struct.ProtocolState = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.MEMCACHEDSTUFF }
%struct.MEMCACHEDSTUFF = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type opaque

@sm_memcached_responses = common dso_local global i64 0, align 8
@sm_memcached_stats = common dso_local global i64 0, align 8
@PROTO_MEMCACHED = common dso_local global i32 0, align 4
@memcached_stats = common dso_local global %struct.TYPE_4__* null, align 8
@AUTO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Banner1*, i8*, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*)* @memcached_tcp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memcached_tcp_parse(%struct.Banner1* %0, i8* %1, %struct.ProtocolState* %2, i8* %3, i64 %4, %struct.BannerOutput* %5, %struct.InteractiveData* %6) #0 {
  %8 = alloca %struct.Banner1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ProtocolState*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.BannerOutput*, align 8
  %14 = alloca %struct.InteractiveData*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.MEMCACHEDSTUFF*, align 8
  %18 = alloca i64, align 8
  store %struct.Banner1* %0, %struct.Banner1** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.ProtocolState* %2, %struct.ProtocolState** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.BannerOutput* %5, %struct.BannerOutput** %13, align 8
  store %struct.InteractiveData* %6, %struct.InteractiveData** %14, align 8
  %19 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %20 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %23 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.MEMCACHEDSTUFF* %24, %struct.MEMCACHEDSTUFF** %17, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @UNUSEDPARM(i8* %25)
  %27 = load %struct.Banner1*, %struct.Banner1** %8, align 8
  %28 = bitcast %struct.Banner1* %27 to i8*
  %29 = call i32 @UNUSEDPARM(i8* %28)
  %30 = load %struct.InteractiveData*, %struct.InteractiveData** %14, align 8
  %31 = bitcast %struct.InteractiveData* %30 to i8*
  %32 = call i32 @UNUSEDPARM(i8* %31)
  %33 = load i64, i64* @sm_memcached_responses, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  br label %219

36:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %212, %36
  %38 = load i32, i32* %16, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %215

42:                                               ; preds = %37
  %43 = load i32, i32* %15, align 4
  switch i32 %43, label %211 [
    i32 0, label %44
    i32 1, label %47
    i32 3, label %73
    i32 2, label %76
    i32 100, label %105
    i32 200, label %105
    i32 101, label %132
    i32 201, label %179
  ]

44:                                               ; preds = %42
  %45 = load %struct.MEMCACHEDSTUFF*, %struct.MEMCACHEDSTUFF** %17, align 8
  %46 = getelementptr inbounds %struct.MEMCACHEDSTUFF, %struct.MEMCACHEDSTUFF* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %44
  %48 = load i64, i64* @sm_memcached_responses, align 8
  %49 = load %struct.MEMCACHEDSTUFF*, %struct.MEMCACHEDSTUFF** %17, align 8
  %50 = getelementptr inbounds %struct.MEMCACHEDSTUFF, %struct.MEMCACHEDSTUFF* %49, i32 0, i32 0
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @smack_search_next(i64 %48, i32* %50, i8* %51, i32* %16, i32 %53)
  store i64 %54, i64* %18, align 8
  %55 = load i32, i32* %16, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %16, align 4
  %57 = load i64, i64* %18, align 8
  switch i64 %57, label %71 [
    i64 128, label %58
    i64 132, label %59
    i64 133, label %70
  ]

58:                                               ; preds = %47
  br label %72

59:                                               ; preds = %47
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 2, i32* %15, align 4
  br label %69

68:                                               ; preds = %59
  store i32 100, i32* %15, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %72

70:                                               ; preds = %47
  store i32 3, i32* %15, align 4
  br label %72

71:                                               ; preds = %47
  store i32 2, i32* %15, align 4
  br label %72

72:                                               ; preds = %71, %70, %69, %58
  br label %211

73:                                               ; preds = %42
  %74 = load i64, i64* %12, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  br label %211

76:                                               ; preds = %42
  br label %77

77:                                               ; preds = %92, %76
  %78 = load i32, i32* %16, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %16, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %88, 10
  br label %90

90:                                               ; preds = %82, %77
  %91 = phi i1 [ false, %77 ], [ %89, %82 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i32, i32* %16, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %77

95:                                               ; preds = %90
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %16, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %103, %95
  br label %211

105:                                              ; preds = %42, %42
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* %16, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %131

114:                                              ; preds = %105
  %115 = load i8*, i8** %11, align 8
  %116 = load i32, i32* %16, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = call i32 @isspace(i8 zeroext %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %212

123:                                              ; preds = %114
  %124 = load i32, i32* %15, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %15, align 4
  %126 = load %struct.MEMCACHEDSTUFF*, %struct.MEMCACHEDSTUFF** %17, align 8
  %127 = getelementptr inbounds %struct.MEMCACHEDSTUFF, %struct.MEMCACHEDSTUFF* %126, i32 0, i32 0
  store i32 0, i32* %127, align 4
  %128 = load i32, i32* %16, align 4
  %129 = add i32 %128, -1
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %113
  br label %211

132:                                              ; preds = %42
  %133 = load i64, i64* @sm_memcached_stats, align 8
  %134 = load %struct.MEMCACHEDSTUFF*, %struct.MEMCACHEDSTUFF** %17, align 8
  %135 = getelementptr inbounds %struct.MEMCACHEDSTUFF, %struct.MEMCACHEDSTUFF* %134, i32 0, i32 0
  %136 = load i8*, i8** %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i64 @smack_search_next(i64 %133, i32* %135, i8* %136, i32* %16, i32 %138)
  store i64 %139, i64* %18, align 8
  %140 = load i32, i32* %16, align 4
  %141 = add i32 %140, -1
  store i32 %141, i32* %16, align 4
  %142 = load i64, i64* %18, align 8
  switch i64 %142, label %167 [
    i64 128, label %143
    i64 130, label %144
    i64 131, label %144
    i64 129, label %144
  ]

143:                                              ; preds = %132
  br label %178

144:                                              ; preds = %132, %132, %132
  %145 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %146 = load i32, i32* @PROTO_MEMCACHED, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @memcached_stats, align 8
  %148 = load i64, i64* %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @AUTO_LEN, align 4
  %153 = call i32 @banout_append(%struct.BannerOutput* %145, i32 %146, i32 %151, i32 %152)
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* %16, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 10
  br i1 %160, label %161, label %162

161:                                              ; preds = %144
  store i32 0, i32* %15, align 4
  br label %163

162:                                              ; preds = %144
  store i32 200, i32* %15, align 4
  br label %163

163:                                              ; preds = %162, %161
  %164 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %165 = load i32, i32* @PROTO_MEMCACHED, align 4
  %166 = call i32 @banout_append_char(%struct.BannerOutput* %164, i32 %165, i8 zeroext 61)
  br label %178

167:                                              ; preds = %132
  %168 = load i8*, i8** %11, align 8
  %169 = load i32, i32* %16, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %173, 10
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  store i32 0, i32* %15, align 4
  br label %177

176:                                              ; preds = %167
  store i32 2, i32* %15, align 4
  br label %177

177:                                              ; preds = %176, %175
  br label %178

178:                                              ; preds = %177, %163, %143
  br label %211

179:                                              ; preds = %42
  %180 = load i8*, i8** %11, align 8
  %181 = load i32, i32* %16, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %185, 13
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %212

188:                                              ; preds = %179
  %189 = load i8*, i8** %11, align 8
  %190 = load i32, i32* %16, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %194, 10
  br i1 %195, label %196, label %200

196:                                              ; preds = %188
  %197 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %198 = load i32, i32* @PROTO_MEMCACHED, align 4
  %199 = call i32 @banout_append_char(%struct.BannerOutput* %197, i32 %198, i8 zeroext 32)
  store i32 0, i32* %15, align 4
  br label %211

200:                                              ; preds = %188
  %201 = load %struct.BannerOutput*, %struct.BannerOutput** %13, align 8
  %202 = load i32, i32* @PROTO_MEMCACHED, align 4
  %203 = load i8*, i8** %11, align 8
  %204 = load i32, i32* %16, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = call i32 @banout_append_char(%struct.BannerOutput* %201, i32 %202, i8 zeroext %207)
  br label %209

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %42, %210, %196, %178, %131, %104, %73, %72
  br label %212

212:                                              ; preds = %211, %187, %122
  %213 = load i32, i32* %16, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %37

215:                                              ; preds = %37
  %216 = load i32, i32* %15, align 4
  %217 = load %struct.ProtocolState*, %struct.ProtocolState** %10, align 8
  %218 = getelementptr inbounds %struct.ProtocolState, %struct.ProtocolState* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %215, %35
  ret void
}

declare dso_local i32 @UNUSEDPARM(i8*) #1

declare dso_local i64 @smack_search_next(i64, i32*, i8*, i32*, i32) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @banout_append(%struct.BannerOutput*, i32, i32, i32) #1

declare dso_local i32 @banout_append_char(%struct.BannerOutput*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
