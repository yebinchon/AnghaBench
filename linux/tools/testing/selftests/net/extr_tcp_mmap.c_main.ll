; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_mmap.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_mmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"46p:svr:w:H:zxkP:M:\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@cfg_family = common dso_local global i32 0, align 4
@cfg_alen = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@cfg_port = common dso_local global i8* null, align 8
@rcvbuf = common dso_local global i8* null, align 8
@sndbuf = common dso_local global i8* null, align 8
@zflg = common dso_local global i32 0, align 4
@xflg = common dso_local global i32 0, align 4
@keepflag = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_MAXSEG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"setsockopt TCP_MAXSEG\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@chunk_size = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@SO_MAX_PACING_RATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"setsockopt SO_MAX_PACING_RATE\00", align 1
@SO_ZEROCOPY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"setsockopt SO_ZEROCOPY, (-z option disabled)\00", align 1
@FILE_SZ = common dso_local global i64 0, align 8
@MSG_ZEROCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %57, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %55 [
    i32 52, label %26
    i32 54, label %28
    i32 112, label %30
    i32 72, label %33
    i32 115, label %35
    i32 114, label %38
    i32 119, label %41
    i32 122, label %44
    i32 77, label %45
    i32 120, label %49
    i32 107, label %50
    i32 80, label %51
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @PF_INET, align 4
  store i32 %27, i32* @cfg_family, align 4
  store i32 4, i32* @cfg_alen, align 4
  br label %57

28:                                               ; preds = %24
  %29 = load i32, i32* @PF_INET6, align 4
  store i32 %29, i32* @cfg_family, align 4
  store i32 4, i32* @cfg_alen, align 4
  br label %57

30:                                               ; preds = %24
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i8* @atoi(i8* %31)
  store i8* %32, i8** @cfg_port, align 8
  br label %57

33:                                               ; preds = %24
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %10, align 8
  br label %57

35:                                               ; preds = %24
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  br label %57

38:                                               ; preds = %24
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @atoi(i8* %39)
  store i8* %40, i8** @rcvbuf, align 8
  br label %57

41:                                               ; preds = %24
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i8* @atoi(i8* %42)
  store i8* %43, i8** @sndbuf, align 8
  br label %57

44:                                               ; preds = %24
  store i32 1, i32* @zflg, align 4
  br label %57

45:                                               ; preds = %24
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8* @atoi(i8* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %16, align 4
  br label %57

49:                                               ; preds = %24
  store i32 1, i32* @xflg, align 4
  br label %57

50:                                               ; preds = %24
  store i32 1, i32* @keepflag, align 4
  br label %57

51:                                               ; preds = %24
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i8* @atoi(i8* %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %24
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %51, %50, %49, %45, %44, %41, %38, %35, %33, %30, %28, %26
  br label %19

58:                                               ; preds = %19
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %58
  %62 = load i32, i32* @cfg_family, align 4
  %63 = load i32, i32* @SOCK_STREAM, align 4
  %64 = call i32 @socket(i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @exit(i32 1) #3
  unreachable

70:                                               ; preds = %61
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @apply_rcvsnd_buf(i32 %71)
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @SOL_SOCKET, align 4
  %75 = load i32, i32* @SO_REUSEADDR, align 4
  %76 = call i32 (i32, i32, i32, ...) @setsockopt(i32 %73, i32 %74, i32 %75, i32* %13, i64 4)
  %77 = load i32, i32* @cfg_family, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @setup_sockaddr(i32 %77, i8* %78, %struct.sockaddr_storage* %6)
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %70
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @IPPROTO_TCP, align 4
  %85 = load i32, i32* @TCP_MAXSEG, align 4
  %86 = call i32 (i32, i32, i32, ...) @setsockopt(i32 %83, i32 %84, i32 %85, i32* %16, i64 4)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %82, %70
  %92 = load i32, i32* %17, align 4
  %93 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*
  %94 = load i32, i32* @cfg_alen, align 4
  %95 = call i32 @bind(i32 %92, %struct.sockaddr* %93, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 @exit(i32 1) #3
  unreachable

100:                                              ; preds = %91
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @listen(i32 %101, i32 128)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %106 = call i32 @exit(i32 1) #3
  unreachable

107:                                              ; preds = %100
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @do_accept(i32 %108)
  br label %110

110:                                              ; preds = %107, %58
  %111 = load i64, i64* @chunk_size, align 8
  %112 = load i32, i32* @PROT_READ, align 4
  %113 = load i32, i32* @PROT_WRITE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @MAP_PRIVATE, align 4
  %116 = load i32, i32* @MAP_ANONYMOUS, align 4
  %117 = or i32 %115, %116
  %118 = call i8* @mmap(i32* null, i64 %111, i32 %114, i32 %117, i32 -1, i32 0)
  store i8* %118, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = icmp eq i8* %119, inttoptr (i64 -1 to i8*)
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %123 = call i32 @exit(i32 1) #3
  unreachable

124:                                              ; preds = %110
  %125 = load i32, i32* @cfg_family, align 4
  %126 = load i32, i32* @SOCK_STREAM, align 4
  %127 = call i32 @socket(i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %132 = call i32 @exit(i32 1) #3
  unreachable

133:                                              ; preds = %124
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @apply_rcvsnd_buf(i32 %134)
  %136 = load i32, i32* @cfg_family, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @setup_sockaddr(i32 %136, i8* %137, %struct.sockaddr_storage* %7)
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @IPPROTO_TCP, align 4
  %144 = load i32, i32* @TCP_MAXSEG, align 4
  %145 = call i32 (i32, i32, i32, ...) @setsockopt(i32 %142, i32 %143, i32 %144, i32* %16, i64 4)
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %149 = call i32 @exit(i32 1) #3
  unreachable

150:                                              ; preds = %141, %133
  %151 = load i32, i32* %11, align 4
  %152 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %153 = load i32, i32* @cfg_alen, align 4
  %154 = call i32 @connect(i32 %151, %struct.sockaddr* %152, i32 %153)
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %158 = call i32 @exit(i32 1) #3
  unreachable

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @SOL_SOCKET, align 4
  %165 = load i32, i32* @SO_MAX_PACING_RATE, align 4
  %166 = call i32 (i32, i32, i32, ...) @setsockopt(i32 %163, i32 %164, i32 %165, i32* %8, i64 4)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %162, %159
  %171 = load i32, i32* @zflg, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @SOL_SOCKET, align 4
  %176 = load i32, i32* @SO_ZEROCOPY, align 4
  %177 = call i32 (i32, i32, i32, ...) @setsockopt(i32 %174, i32 %175, i32 %176, i32* %13, i64 4)
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = call i32 @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* @zflg, align 4
  br label %181

181:                                              ; preds = %179, %173, %170
  br label %182

182:                                              ; preds = %210, %181
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* @FILE_SZ, align 8
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %214

186:                                              ; preds = %182
  %187 = load i64, i64* @FILE_SZ, align 8
  %188 = load i64, i64* %9, align 8
  %189 = sub i64 %187, %188
  store i64 %189, i64* %18, align 8
  %190 = load i64, i64* %18, align 8
  %191 = load i64, i64* @chunk_size, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i64, i64* @chunk_size, align 8
  store i64 %194, i64* %18, align 8
  br label %195

195:                                              ; preds = %193, %186
  %196 = load i32, i32* %11, align 4
  %197 = load i8*, i8** %14, align 8
  %198 = load i64, i64* %18, align 8
  %199 = load i32, i32* @zflg, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* @MSG_ZEROCOPY, align 4
  br label %204

203:                                              ; preds = %195
  br label %204

204:                                              ; preds = %203, %201
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ]
  %206 = call i64 @send(i32 %196, i8* %197, i64 %198, i32 %205)
  store i64 %206, i64* %18, align 8
  %207 = load i64, i64* %18, align 8
  %208 = icmp sle i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %214

210:                                              ; preds = %204
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* %9, align 8
  %213 = add i64 %212, %211
  store i64 %213, i64* %9, align 8
  br label %182

214:                                              ; preds = %209, %182
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @close(i32 %215)
  %217 = load i8*, i8** %14, align 8
  %218 = load i64, i64* @chunk_size, align 8
  %219 = call i32 @munmap(i8* %217, i64 %218)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @apply_rcvsnd_buf(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, ...) #1

declare dso_local i32 @setup_sockaddr(i32, i8*, %struct.sockaddr_storage*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @do_accept(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @send(i32, i8*, i64, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
