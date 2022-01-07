; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socketpair.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.socket_address = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_socketpair(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.socket_address, align 4
  %6 = alloca %union.socket_address, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 8, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @INVALID_SOCKET, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %10, i64* %12, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 %10, i64* %14, align 8
  store i64 %10, i64* %7, align 8
  %15 = call i32 @memset(%union.socket_address* %5, i32 0, i32 8)
  %16 = load i32, i32* @AF_INET, align 4
  %17 = bitcast %union.socket_address* %5 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = call i32 @htonl(i32 2130706433)
  %20 = bitcast %union.socket_address* %5 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = bitcast %union.socket_address* %6 to i8*
  %24 = bitcast %union.socket_address* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %25 = load i32, i32* @AF_INET, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @socket(i32 %25, i32 %26, i32 0)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @INVALID_SOCKET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %148

31:                                               ; preds = %2
  %32 = load i64, i64* %7, align 8
  %33 = bitcast %union.socket_address* %5 to i32*
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @bind(i64 %32, i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %147

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SOCK_STREAM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @listen(i64 %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %146

47:                                               ; preds = %42, %38
  %48 = load i64, i64* %7, align 8
  %49 = bitcast %union.socket_address* %5 to i32*
  %50 = call i64 @getsockname(i64 %48, i32* %49, i32* %8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %145

53:                                               ; preds = %47
  %54 = load i32, i32* @AF_INET, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @socket(i32 %54, i32 %55, i32 0)
  %57 = load i64*, i64** %3, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* @INVALID_SOCKET, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %144

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SOCK_STREAM, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i64*, i64** %3, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = bitcast %union.socket_address* %5 to i32*
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @connect(i64 %69, i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %143

75:                                               ; preds = %66, %62
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @SOCK_DGRAM, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %75
  %80 = load i64*, i64** %3, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = bitcast %union.socket_address* %6 to i32*
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @bind(i64 %82, i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %79
  %88 = load i64*, i64** %3, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = bitcast %union.socket_address* %6 to i32*
  %92 = call i64 @getsockname(i64 %90, i32* %91, i32* %8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %87
  %95 = load i64*, i64** %3, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = bitcast %union.socket_address* %5 to i32*
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @connect(i64 %97, i32* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %94
  %103 = load i64, i64* %7, align 8
  %104 = bitcast %union.socket_address* %6 to i32*
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @connect(i64 %103, i32* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102, %94, %87, %79
  br label %142

109:                                              ; preds = %102, %75
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @SOCK_DGRAM, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* %7, align 8
  br label %119

115:                                              ; preds = %109
  %116 = load i64, i64* %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i64 @mg_socketpair_accept(i64 %116, %union.socket_address* %5, i32 %117)
  br label %119

119:                                              ; preds = %115, %113
  %120 = phi i64 [ %114, %113 ], [ %118, %115 ]
  %121 = load i64*, i64** %3, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* @INVALID_SOCKET, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %141

126:                                              ; preds = %119
  %127 = load i64*, i64** %3, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @mg_set_close_on_exec(i64 %129)
  %131 = load i64*, i64** %3, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @mg_set_close_on_exec(i64 %133)
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @SOCK_STREAM, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = call i32 @mg_socketpair_close(i64* %7)
  br label %140

140:                                              ; preds = %138, %126
  store i32 1, i32* %9, align 4
  br label %141

141:                                              ; preds = %140, %125
  br label %142

142:                                              ; preds = %141, %108
  br label %143

143:                                              ; preds = %142, %74
  br label %144

144:                                              ; preds = %143, %61
  br label %145

145:                                              ; preds = %144, %52
  br label %146

146:                                              ; preds = %145, %46
  br label %147

147:                                              ; preds = %146, %37
  br label %148

148:                                              ; preds = %147, %30
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %178, label %151

151:                                              ; preds = %148
  %152 = load i64*, i64** %3, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @INVALID_SOCKET, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i64*, i64** %3, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = call i32 @mg_socketpair_close(i64* %159)
  br label %161

161:                                              ; preds = %157, %151
  %162 = load i64*, i64** %3, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @INVALID_SOCKET, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i64*, i64** %3, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 1
  %170 = call i32 @mg_socketpair_close(i64* %169)
  br label %171

171:                                              ; preds = %167, %161
  %172 = load i64, i64* %7, align 8
  %173 = load i64, i64* @INVALID_SOCKET, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = call i32 @mg_socketpair_close(i64* %7)
  br label %177

177:                                              ; preds = %175, %171
  br label %178

178:                                              ; preds = %177, %148
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i32 @memset(%union.socket_address*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @bind(i64, i32*, i32) #1

declare dso_local i64 @listen(i64, i32) #1

declare dso_local i64 @getsockname(i64, i32*, i32*) #1

declare dso_local i64 @connect(i64, i32*, i32) #1

declare dso_local i64 @mg_socketpair_accept(i64, %union.socket_address*, i32) #1

declare dso_local i32 @mg_set_close_on_exec(i64) #1

declare dso_local i32 @mg_socketpair_close(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
