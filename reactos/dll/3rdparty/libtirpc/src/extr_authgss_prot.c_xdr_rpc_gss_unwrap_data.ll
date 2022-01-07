; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authgss_prot.c_xdr_rpc_gss_unwrap_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_authgss_prot.c_xdr_rpc_gss_unwrap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@xdr_void = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@RPCSEC_GSS_SVC_INTEGRITY = common dso_local global i64 0, align 8
@MAX_NETOBJ_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"xdr decode databody_integ failed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"xdr decode checksum failed\00", align 1
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gss_verify_mic\00", align 1
@RPCSEC_GSS_SVC_PRIVACY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"xdr decode databody_priv failed\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gss_unwrap\00", align 1
@XDR_DECODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"wrong sequence number in databody\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdr_rpc_gss_unwrap_data(i32* %0, i64 (i32*, i32*)* %1, i32* %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64 (i32*, i32*)*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca %struct.TYPE_8__, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 (i32*, i32*)* %1, i64 (i32*, i32*)** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %25 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %10, align 8
  %26 = load i64, i64* @xdr_void, align 8
  %27 = inttoptr i64 %26 to i64 (i32*, i32*)*
  %28 = icmp eq i64 (i32*, i32*)* %25, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %7
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %7
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %8, align 4
  br label %153

34:                                               ; preds = %29
  %35 = call i32 @memset(%struct.TYPE_8__* %17, i32 0, i32 8)
  %36 = call i32 @memset(%struct.TYPE_8__* %18, i32 0, i32 8)
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @RPCSEC_GSS_SVC_INTEGRITY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %34
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %43 = bitcast i32* %42 to i8**
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %45 = bitcast i32* %44 to i64*
  %46 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %47 = call i32 @xdr_bytes(i32* %41, i8** %43, i64* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = call i32 @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %8, align 4
  br label %153

52:                                               ; preds = %40
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %55 = bitcast i32* %54 to i8**
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %57 = bitcast i32* %56 to i64*
  %58 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %59 = call i32 @xdr_bytes(i32* %53, i8** %55, i64* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = call i32 @gss_release_buffer(i64* %20, %struct.TYPE_8__* %17)
  %63 = call i32 @log_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %8, align 4
  br label %153

65:                                               ; preds = %52
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @gss_verify_mic(i64* %20, i32 %66, %struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i64* %22)
  store i64 %67, i64* %19, align 8
  %68 = call i32 @gss_release_buffer(i64* %20, %struct.TYPE_8__* %18)
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* @GSS_S_COMPLETE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72, %65
  %77 = call i32 @gss_release_buffer(i64* %20, %struct.TYPE_8__* %17)
  %78 = load i64, i64* %19, align 8
  %79 = load i64, i64* %20, align 8
  %80 = call i32 @log_status(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %8, align 4
  br label %153

82:                                               ; preds = %72
  br label %122

83:                                               ; preds = %34
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @RPCSEC_GSS_SVC_PRIVACY, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %90 = bitcast i32* %89 to i8**
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %92 = bitcast i32* %91 to i64*
  %93 = load i32, i32* @MAX_NETOBJ_SZ, align 4
  %94 = call i32 @xdr_bytes(i32* %88, i8** %90, i64* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = call i32 @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %8, align 4
  br label %153

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = call i64 @gss_unwrap(i64* %20, i32 %100, %struct.TYPE_8__* %18, %struct.TYPE_8__* %17, i32* %23, i64* %22)
  store i64 %101, i64* %19, align 8
  %102 = call i32 @gss_release_buffer(i64* %20, %struct.TYPE_8__* %18)
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* @GSS_S_COMPLETE, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %22, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110, %106, %99
  %115 = call i32 @gss_release_buffer(i64* %20, %struct.TYPE_8__* %17)
  %116 = load i64, i64* %19, align 8
  %117 = load i64, i64* %20, align 8
  %118 = call i32 @log_status(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %116, i64 %117)
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %8, align 4
  br label %153

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %83
  br label %122

122:                                              ; preds = %121, %82
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @XDR_DECODE, align 4
  %128 = call i32 @xdrmem_create(i32* %16, i32 %124, i32 %126, i32 %127)
  %129 = call i64 @xdr_u_int(i32* %16, i64* %21)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %10, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = call i64 %132(i32* %16, i32* %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %131, %122
  %137 = phi i1 [ false, %122 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %24, align 4
  %139 = call i32 @XDR_DESTROY(i32* %16)
  %140 = call i32 @gss_release_buffer(i64* %20, %struct.TYPE_8__* %17)
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* @TRUE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = load i64, i64* %21, align 8
  %146 = load i64, i64* %15, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = call i32 @log_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %8, align 4
  br label %153

151:                                              ; preds = %144, %136
  %152 = load i32, i32* %24, align 4
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %151, %148, %114, %96, %76, %61, %49, %32
  %154 = load i32, i32* %8, align 4
  ret i32 %154
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @xdr_bytes(i32*, i8**, i64*, i32) #1

declare dso_local i32 @log_debug(i8*) #1

declare dso_local i32 @gss_release_buffer(i64*, %struct.TYPE_8__*) #1

declare dso_local i64 @gss_verify_mic(i64*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i64*) #1

declare dso_local i32 @log_status(i8*, i64, i64) #1

declare dso_local i64 @gss_unwrap(i64*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i64*) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i64 @xdr_u_int(i32*, i64*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
