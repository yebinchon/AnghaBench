; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_filechecks.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_options_postprocess_filechecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.connection_entry** }
%struct.connection_entry = type { i32, i32, i32 }

@CHKACC_FILE = common dso_local global i32 0, align 4
@CHKACC_INLINE = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"--dh\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"--ca\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"--capath\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--cert\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"--extra-certs\00", align 1
@CHKACC_PRIVATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"--key\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--pkcs12\00", align 1
@SSLF_CRL_VERIFY_DIR = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"--crl-verify directory\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"--crl-verify\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"--tls-auth\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"--tls-crypt\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"--tls-crypt-v2\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"--genkey\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"--secret\00", align 1
@CHKACC_DIRPATH = common dso_local global i32 0, align 4
@CHKACC_FILEXSTWR = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"--replay-persist\00", align 1
@CHKACC_ACPTSTDIN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"--askpass\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"--chroot directory\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"--writepid\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"--status\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"--tls-export-cert\00", align 1
@M_USAGE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"Please correct these errors.\00", align 1
@MF_EXTERNAL_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*)* @options_postprocess_filechecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_postprocess_filechecks(%struct.options* %0) #0 {
  %2 = alloca %struct.options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection_entry*, align 8
  store %struct.options* %0, %struct.options** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @CHKACC_FILE, align 4
  %7 = load i32, i32* @CHKACC_INLINE, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.options*, %struct.options** %2, align 8
  %10 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 22
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @R_OK, align 4
  %13 = call i32 @check_file_access(i32 %8, i32 %11, i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @CHKACC_FILE, align 4
  %17 = load i32, i32* @CHKACC_INLINE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.options*, %struct.options** %2, align 8
  %20 = getelementptr inbounds %struct.options, %struct.options* %19, i32 0, i32 21
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @R_OK, align 4
  %23 = call i32 @check_file_access(i32 %18, i32 %21, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.options*, %struct.options** %2, align 8
  %27 = getelementptr inbounds %struct.options, %struct.options* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CHKACC_FILE, align 4
  %30 = load %struct.options*, %struct.options** %2, align 8
  %31 = getelementptr inbounds %struct.options, %struct.options* %30, i32 0, i32 20
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @R_OK, align 4
  %34 = call i32 @check_file_access_chroot(i32 %28, i32 %29, i32 %32, i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @CHKACC_FILE, align 4
  %38 = load i32, i32* @CHKACC_INLINE, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.options*, %struct.options** %2, align 8
  %41 = getelementptr inbounds %struct.options, %struct.options* %40, i32 0, i32 19
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @R_OK, align 4
  %44 = call i32 @check_file_access(i32 %39, i32 %42, i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @CHKACC_FILE, align 4
  %48 = load i32, i32* @CHKACC_INLINE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.options*, %struct.options** %2, align 8
  %51 = getelementptr inbounds %struct.options, %struct.options* %50, i32 0, i32 18
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @R_OK, align 4
  %54 = call i32 @check_file_access(i32 %49, i32 %52, i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @CHKACC_FILE, align 4
  %58 = load i32, i32* @CHKACC_INLINE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CHKACC_PRIVATE, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.options*, %struct.options** %2, align 8
  %63 = getelementptr inbounds %struct.options, %struct.options* %62, i32 0, i32 17
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @R_OK, align 4
  %66 = call i32 @check_file_access(i32 %61, i32 %64, i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* %3, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @CHKACC_FILE, align 4
  %70 = load i32, i32* @CHKACC_INLINE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @CHKACC_PRIVATE, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.options*, %struct.options** %2, align 8
  %75 = getelementptr inbounds %struct.options, %struct.options* %74, i32 0, i32 16
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @R_OK, align 4
  %78 = call i32 @check_file_access(i32 %73, i32 %76, i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load %struct.options*, %struct.options** %2, align 8
  %82 = getelementptr inbounds %struct.options, %struct.options* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SSLF_CRL_VERIFY_DIR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %1
  %88 = load %struct.options*, %struct.options** %2, align 8
  %89 = getelementptr inbounds %struct.options, %struct.options* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CHKACC_FILE, align 4
  %92 = load %struct.options*, %struct.options** %2, align 8
  %93 = getelementptr inbounds %struct.options, %struct.options* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @R_OK, align 4
  %96 = load i32, i32* @X_OK, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @check_file_access_chroot(i32 %90, i32 %91, i32 %94, i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %115

101:                                              ; preds = %1
  %102 = load %struct.options*, %struct.options** %2, align 8
  %103 = getelementptr inbounds %struct.options, %struct.options* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CHKACC_FILE, align 4
  %106 = load i32, i32* @CHKACC_INLINE, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.options*, %struct.options** %2, align 8
  %109 = getelementptr inbounds %struct.options, %struct.options* %108, i32 0, i32 15
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @R_OK, align 4
  %112 = call i32 @check_file_access_chroot(i32 %104, i32 %107, i32 %110, i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %101, %87
  %116 = load %struct.options*, %struct.options** %2, align 8
  %117 = getelementptr inbounds %struct.options, %struct.options* %116, i32 0, i32 14
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = call i32 @ASSERT(%struct.TYPE_2__* %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %174, %115
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.options*, %struct.options** %2, align 8
  %123 = getelementptr inbounds %struct.options, %struct.options* %122, i32 0, i32 14
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %121, %126
  br i1 %127, label %128, label %177

128:                                              ; preds = %120
  %129 = load %struct.options*, %struct.options** %2, align 8
  %130 = getelementptr inbounds %struct.options, %struct.options* %129, i32 0, i32 14
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load %struct.connection_entry**, %struct.connection_entry*** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.connection_entry*, %struct.connection_entry** %133, i64 %135
  %137 = load %struct.connection_entry*, %struct.connection_entry** %136, align 8
  store %struct.connection_entry* %137, %struct.connection_entry** %5, align 8
  %138 = load i32, i32* @CHKACC_FILE, align 4
  %139 = load i32, i32* @CHKACC_INLINE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @CHKACC_PRIVATE, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %144 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @R_OK, align 4
  %147 = call i32 @check_file_access(i32 %142, i32 %145, i32 %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %148 = load i32, i32* %3, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %3, align 4
  %150 = load i32, i32* @CHKACC_FILE, align 4
  %151 = load i32, i32* @CHKACC_INLINE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @CHKACC_PRIVATE, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %156 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @R_OK, align 4
  %159 = call i32 @check_file_access(i32 %154, i32 %157, i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %160 = load i32, i32* %3, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* @CHKACC_FILE, align 4
  %163 = load i32, i32* @CHKACC_INLINE, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @CHKACC_PRIVATE, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.connection_entry*, %struct.connection_entry** %5, align 8
  %168 = getelementptr inbounds %struct.connection_entry, %struct.connection_entry* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @R_OK, align 4
  %171 = call i32 @check_file_access(i32 %166, i32 %169, i32 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %172 = load i32, i32* %3, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %128
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %120

177:                                              ; preds = %120
  %178 = load i32, i32* @CHKACC_FILE, align 4
  %179 = load i32, i32* @CHKACC_INLINE, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @CHKACC_PRIVATE, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.options*, %struct.options** %2, align 8
  %184 = getelementptr inbounds %struct.options, %struct.options* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @R_OK, align 4
  %187 = call i32 @check_file_access(i32 %182, i32 %185, i32 %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %188 = load i32, i32* %3, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %3, align 4
  %190 = load i32, i32* @CHKACC_FILE, align 4
  %191 = load i32, i32* @CHKACC_INLINE, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @CHKACC_PRIVATE, align 4
  %194 = or i32 %192, %193
  %195 = load %struct.options*, %struct.options** %2, align 8
  %196 = getelementptr inbounds %struct.options, %struct.options* %195, i32 0, i32 12
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @R_OK, align 4
  %199 = call i32 @check_file_access(i32 %194, i32 %197, i32 %198, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %200 = load i32, i32* %3, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %3, align 4
  %202 = load i32, i32* @CHKACC_DIRPATH, align 4
  %203 = load i32, i32* @CHKACC_FILEXSTWR, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.options*, %struct.options** %2, align 8
  %206 = getelementptr inbounds %struct.options, %struct.options* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @R_OK, align 4
  %209 = load i32, i32* @W_OK, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @check_file_access(i32 %204, i32 %207, i32 %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %212 = load i32, i32* %3, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %3, align 4
  %214 = load i32, i32* @CHKACC_FILE, align 4
  %215 = load i32, i32* @CHKACC_ACPTSTDIN, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @CHKACC_PRIVATE, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.options*, %struct.options** %2, align 8
  %220 = getelementptr inbounds %struct.options, %struct.options* %219, i32 0, i32 10
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @R_OK, align 4
  %223 = call i32 @check_file_access(i32 %218, i32 %221, i32 %222, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %224 = load i32, i32* %3, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %3, align 4
  %226 = load i32, i32* @CHKACC_FILE, align 4
  %227 = load %struct.options*, %struct.options** %2, align 8
  %228 = getelementptr inbounds %struct.options, %struct.options* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @R_OK, align 4
  %231 = load i32, i32* @X_OK, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @check_file_access(i32 %226, i32 %229, i32 %232, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %234 = load i32, i32* %3, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %3, align 4
  %236 = load i32, i32* @CHKACC_DIRPATH, align 4
  %237 = load i32, i32* @CHKACC_FILEXSTWR, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.options*, %struct.options** %2, align 8
  %240 = getelementptr inbounds %struct.options, %struct.options* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @R_OK, align 4
  %243 = load i32, i32* @W_OK, align 4
  %244 = or i32 %242, %243
  %245 = call i32 @check_file_access(i32 %238, i32 %241, i32 %244, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %246 = load i32, i32* %3, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %3, align 4
  %248 = load i32, i32* @CHKACC_DIRPATH, align 4
  %249 = load i32, i32* @CHKACC_FILEXSTWR, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.options*, %struct.options** %2, align 8
  %252 = getelementptr inbounds %struct.options, %struct.options* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @R_OK, align 4
  %255 = load i32, i32* @W_OK, align 4
  %256 = or i32 %254, %255
  %257 = call i32 @check_file_access(i32 %250, i32 %253, i32 %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %258 = load i32, i32* %3, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %3, align 4
  %260 = load %struct.options*, %struct.options** %2, align 8
  %261 = getelementptr inbounds %struct.options, %struct.options* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @CHKACC_FILE, align 4
  %264 = load %struct.options*, %struct.options** %2, align 8
  %265 = getelementptr inbounds %struct.options, %struct.options* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @R_OK, align 4
  %268 = load i32, i32* @W_OK, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @X_OK, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @check_file_access_chroot(i32 %262, i32 %263, i32 %266, i32 %271, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %273 = load i32, i32* %3, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %3, align 4
  %275 = load i32, i32* %3, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %177
  %278 = load i32, i32* @M_USAGE, align 4
  %279 = call i32 @msg(i32 %278, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %177
  ret void
}

declare dso_local i32 @check_file_access(i32, i32, i32, i8*) #1

declare dso_local i32 @check_file_access_chroot(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ASSERT(%struct.TYPE_2__*) #1

declare dso_local i32 @msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
