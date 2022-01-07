; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_smbios.c_IsGenericSystemName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_smbios.c_IsGenericSystemName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32, i64 }

@IsGenericSystemName.Vendors = internal constant [13 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* bitcast ([23 x i32]* @.str to i8*), i32 129, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([22 x i32]* @.str.1 to i8*), i32 129, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([20 x i32]* @.str.2 to i8*), i32 129, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([19 x i32]* @.str.4 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([21 x i32]* @.str.5 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([27 x i32]* @.str.6 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([15 x i32]* @.str.7 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([2 x i32]* @.str.8 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([4 x i32]* @.str.9 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([6 x i32]* @.str.10 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([7 x i32]* @.str.11 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([13 x i32]* @.str.12 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }], align 16
@.str = private unnamed_addr constant [23 x i32] [i32 84, i32 111, i32 32, i32 66, i32 101, i32 32, i32 70, i32 105, i32 108, i32 108, i32 101, i32 100, i32 32, i32 66, i32 121, i32 32, i32 79, i32 46, i32 69, i32 46, i32 77, i32 46, i32 0], align 4
@.str.1 = private unnamed_addr constant [22 x i32] [i32 84, i32 111, i32 32, i32 66, i32 101, i32 32, i32 70, i32 105, i32 108, i32 108, i32 101, i32 100, i32 32, i32 66, i32 121, i32 32, i32 79, i32 46, i32 69, i32 46, i32 77, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 109, i32 97, i32 110, i32 117, i32 102, i32 97, i32 99, i32 116, i32 117, i32 114, i32 101, i32 114, i32 0], align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 68, i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 32, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 0], align 4
@.str.4 = private unnamed_addr constant [19 x i32] [i32 76, i32 84, i32 68, i32 32, i32 68, i32 101, i32 108, i32 111, i32 118, i32 111, i32 121, i32 32, i32 79, i32 102, i32 102, i32 105, i32 99, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [21 x i32] [i32 77, i32 111, i32 116, i32 104, i32 101, i32 114, i32 98, i32 111, i32 97, i32 114, i32 100, i32 32, i32 98, i32 121, i32 32, i32 90, i32 79, i32 84, i32 65, i32 67, i32 0], align 4
@.str.6 = private unnamed_addr constant [27 x i32] [i32 84, i32 121, i32 112, i32 101, i32 50, i32 32, i32 45, i32 32, i32 66, i32 111, i32 97, i32 114, i32 100, i32 32, i32 86, i32 101, i32 110, i32 100, i32 111, i32 114, i32 32, i32 78, i32 97, i32 109, i32 101, i32 49, i32 0], align 4
@.str.7 = private unnamed_addr constant [15 x i32] [i32 68, i32 69, i32 80, i32 79, i32 32, i32 67, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [2 x i32] [i32 45, i32 0], align 4
@.str.9 = private unnamed_addr constant [4 x i32] [i32 79, i32 69, i32 77, i32 0], align 4
@.str.10 = private unnamed_addr constant [6 x i32] [i32 79, i32 46, i32 69, i32 46, i32 77, i32 0], align 4
@.str.11 = private unnamed_addr constant [7 x i32] [i32 85, i32 110, i32 107, i32 110, i32 111, i32 119, i32 0], align 4
@.str.12 = private unnamed_addr constant [13 x i32] [i32 105, i32 110, i32 110, i32 111, i32 116, i32 101, i32 107, i32 32, i32 71, i32 109, i32 98, i32 72, i32 0], align 4
@IsGenericSystemName.Devices = internal constant [45 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* bitcast ([23 x i32]* @.str to i8*), i32 129, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([22 x i32]* @.str.1 to i8*), i32 129, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([11 x i32]* @.str.13 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([20 x i32]* @.str.14 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([12 x i32]* @.str.15 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([15 x i32]* @.str.3 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([27 x i32]* @.str.16 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([9 x i32]* @.str.17 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([20 x i32]* @.str.18 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([18 x i32]* @.str.19 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([18 x i32]* @.str.20 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([20 x i32]* @.str.21 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([21 x i32]* @.str.22 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([19 x i32]* @.str.23 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([16 x i32]* @.str.24 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([24 x i32]* @.str.25 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([19 x i32]* @.str.26 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([28 x i32]* @.str.27 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([22 x i32]* @.str.28 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([2 x i32]* @.str.29 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([2 x i32]* @.str.30 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([4 x i32]* @.str.31 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([4 x i32]* @.str.32 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([4 x i32]* @.str.33 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([4 x i32]* @.str.9 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([5 x i32]* @.str.34 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([6 x i32]* @.str.10 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([6 x i32]* @.str.35 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([6 x i32]* @.str.36 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([7 x i32]* @.str.37 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([7 x i32]* @.str.38 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([8 x i32]* @.str.39 to i8*), i32 129, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([8 x i32]* @.str.40 to i8*), i32 129, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([9 x i32]* @.str.41 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([14 x i32]* @.str.42 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([15 x i32]* @.str.7 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([19 x i32]* @.str.43 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([14 x i32]* @.str.44 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([10 x i32]* @.str.45 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([11 x i32]* @.str.46 to i8*), i32 128, i32 128, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([30 x i32]* @.str.47 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([16 x i32]* @.str.48 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([19 x i32]* @.str.49 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([13 x i32]* @.str.50 to i8*), i32 128, i32 129, i32 0, i32 0, i64 0 }, %struct.TYPE_3__ { i8* bitcast ([16 x i32]* @.str.51 to i8*), i32 129, i32 129, i32 0, i32 0, i64 0 }], align 16
@.str.13 = private unnamed_addr constant [11 x i32] [i32 65, i32 108, i32 108, i32 32, i32 83, i32 101, i32 114, i32 105, i32 101, i32 115, i32 0], align 4
@.str.14 = private unnamed_addr constant [20 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 80, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 32, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.15 = private unnamed_addr constant [12 x i32] [i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.16 = private unnamed_addr constant [27 x i32] [i32 80, i32 108, i32 101, i32 97, i32 115, i32 101, i32 32, i32 99, i32 104, i32 97, i32 110, i32 103, i32 101, i32 32, i32 112, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 32, i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.17 = private unnamed_addr constant [9 x i32] [i32 67, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 0], align 4
@.str.18 = private unnamed_addr constant [20 x i32] [i32 67, i32 104, i32 105, i32 101, i32 102, i32 82, i32 105, i32 118, i32 101, i32 114, i32 32, i32 80, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 0], align 4
@.str.19 = private unnamed_addr constant [18 x i32] [i32 79, i32 97, i32 107, i32 84, i32 114, i32 97, i32 105, i32 108, i32 32, i32 80, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 0], align 4
@.str.20 = private unnamed_addr constant [18 x i32] [i32 83, i32 104, i32 97, i32 114, i32 107, i32 66, i32 97, i32 121, i32 32, i32 80, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 0], align 4
@.str.21 = private unnamed_addr constant [20 x i32] [i32 72, i32 117, i32 114, i32 111, i32 110, i32 82, i32 105, i32 118, i32 101, i32 114, i32 32, i32 80, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 0], align 4
@.str.22 = private unnamed_addr constant [21 x i32] [i32 83, i32 97, i32 110, i32 100, i32 121, i32 66, i32 114, i32 105, i32 100, i32 103, i32 101, i32 32, i32 80, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 0], align 4
@.str.23 = private unnamed_addr constant [19 x i32] [i32 66, i32 114, i32 111, i32 97, i32 100, i32 119, i32 101, i32 108, i32 108, i32 32, i32 80, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 0], align 4
@.str.24 = private unnamed_addr constant [16 x i32] [i32 83, i32 97, i32 98, i32 105, i32 110, i32 101, i32 32, i32 80, i32 108, i32 97, i32 116, i32 102, i32 111, i32 114, i32 109, i32 0], align 4
@.str.25 = private unnamed_addr constant [24 x i32] [i32 66, i32 97, i32 115, i32 101, i32 32, i32 66, i32 111, i32 97, i32 114, i32 100, i32 32, i32 80, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 32, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.26 = private unnamed_addr constant [19 x i32] [i32 66, i32 97, i32 115, i32 101, i32 32, i32 66, i32 111, i32 97, i32 114, i32 100, i32 32, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@.str.27 = private unnamed_addr constant [28 x i32] [i32 84, i32 121, i32 112, i32 101, i32 50, i32 32, i32 45, i32 32, i32 66, i32 111, i32 97, i32 114, i32 100, i32 32, i32 80, i32 114, i32 111, i32 100, i32 117, i32 99, i32 116, i32 32, i32 78, i32 97, i32 109, i32 101, i32 49, i32 0], align 4
@.str.28 = private unnamed_addr constant [22 x i32] [i32 84, i32 121, i32 112, i32 101, i32 50, i32 32, i32 45, i32 32, i32 66, i32 111, i32 97, i32 114, i32 100, i32 32, i32 86, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@.str.29 = private unnamed_addr constant [2 x i32] [i32 42, i32 0], align 4
@.str.30 = private unnamed_addr constant [2 x i32] [i32 84, i32 0], align 4
@.str.31 = private unnamed_addr constant [4 x i32] [i32 71, i32 69, i32 71, i32 0], align 4
@.str.32 = private unnamed_addr constant [4 x i32] [i32 78, i32 47, i32 65, i32 0], align 4
@.str.33 = private unnamed_addr constant [4 x i32] [i32 45, i32 45, i32 45, i32 0], align 4
@.str.34 = private unnamed_addr constant [5 x i32] [i32 73, i32 78, i32 86, i32 65, i32 0], align 4
@.str.35 = private unnamed_addr constant [6 x i32] [i32 68, i32 78, i32 83, i32 78, i32 66, i32 0], align 4
@.str.36 = private unnamed_addr constant [6 x i32] [i32 49, i32 50, i32 51, i32 52, i32 53, i32 0], align 4
@.str.37 = private unnamed_addr constant [7 x i32] [i32 96, i32 96, i32 96, i32 96, i32 96, i32 96, i32 0], align 4
@.str.38 = private unnamed_addr constant [7 x i32] [i32 85, i32 107, i32 110, i32 111, i32 119, i32 110, i32 0], align 4
@.str.39 = private unnamed_addr constant [8 x i32] [i32 68, i32 101, i32 115, i32 107, i32 116, i32 111, i32 112, i32 0], align 4
@.str.40 = private unnamed_addr constant [8 x i32] [i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 0], align 4
@.str.41 = private unnamed_addr constant [9 x i32] [i32 82, i32 101, i32 115, i32 101, i32 114, i32 118, i32 101, i32 100, i32 0], align 4
@.str.42 = private unnamed_addr constant [14 x i32] [i32 72, i32 97, i32 105, i32 101, i32 114, i32 67, i32 111, i32 109, i32 112, i32 117, i32 116, i32 101, i32 114, i32 0], align 4
@.str.43 = private unnamed_addr constant [19 x i32] [i32 73, i32 110, i32 115, i32 121, i32 100, i32 101, i32 72, i32 50, i32 79, i32 32, i32 69, i32 70, i32 73, i32 32, i32 66, i32 73, i32 79, i32 83, i32 0], align 4
@.str.44 = private unnamed_addr constant [14 x i32] [i32 72, i32 80, i32 32, i32 65, i32 108, i32 108, i32 45, i32 105, i32 110, i32 45, i32 79, i32 110, i32 101, i32 0], align 4
@.str.45 = private unnamed_addr constant [10 x i32] [i32 77, i32 80, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4
@.str.46 = private unnamed_addr constant [11 x i32] [i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 0], align 4
@.str.47 = private unnamed_addr constant [30 x i32] [i32 65, i32 113, i32 117, i32 97, i32 114, i32 105, i32 117, i32 115, i32 32, i32 80, i32 114, i32 111, i32 44, i32 32, i32 83, i32 116, i32 100, i32 44, i32 32, i32 69, i32 108, i32 116, i32 32, i32 83, i32 101, i32 114, i32 105, i32 101, i32 115, i32 0], align 4
@.str.48 = private unnamed_addr constant [16 x i32] [i32 65, i32 113, i32 117, i32 97, i32 114, i32 105, i32 117, i32 115, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4
@.str.49 = private unnamed_addr constant [19 x i32] [i32 65, i32 113, i32 117, i32 97, i32 114, i32 105, i32 117, i32 115, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 32, i32 71, i32 50, i32 0], align 4
@.str.50 = private unnamed_addr constant [13 x i32] [i32 83, i32 117, i32 112, i32 101, i32 114, i32 32, i32 83, i32 101, i32 114, i32 118, i32 101, i32 114, i32 0], align 4
@.str.51 = private unnamed_addr constant [16 x i32] [i32 80, i32 79, i32 83, i32 73, i32 84, i32 73, i32 86, i32 79, i32 32, i32 77, i32 79, i32 66, i32 73, i32 76, i32 69, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @IsGenericSystemName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IsGenericSystemName(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  store i32 129, i32* %13, align 4
  br label %14

14:                                               ; preds = %12, %3
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %63, %14
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @_countof(%struct.TYPE_3__* getelementptr inbounds ([13 x %struct.TYPE_3__], [13 x %struct.TYPE_3__]* @IsGenericSystemName.Vendors, i64 0, i64 0))
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %66

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds [13 x %struct.TYPE_3__], [13 x %struct.TYPE_3__]* @IsGenericSystemName.Vendors, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds [13 x %struct.TYPE_3__], [13 x %struct.TYPE_3__]* @IsGenericSystemName.Vendors, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wcscmp(i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %49

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds [13 x %struct.TYPE_3__], [13 x %struct.TYPE_3__]* @IsGenericSystemName.Vendors, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wcsicmp(i32 %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %39, %29
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds [13 x %struct.TYPE_3__], [13 x %struct.TYPE_3__]* @IsGenericSystemName.Vendors, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 16
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  store i32 128, i32* %4, align 4
  br label %119

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %9, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %9, align 8
  br label %15

66:                                               ; preds = %22, %15
  store i64 0, i64* %9, align 8
  br label %67

67:                                               ; preds = %115, %66
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @_countof(%struct.TYPE_3__* getelementptr inbounds ([45 x %struct.TYPE_3__], [45 x %struct.TYPE_3__]* @IsGenericSystemName.Devices, i64 0, i64 0))
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %118

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  br label %118

75:                                               ; preds = %71
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds [45 x %struct.TYPE_3__], [45 x %struct.TYPE_3__]* @IsGenericSystemName.Devices, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds [45 x %struct.TYPE_3__], [45 x %struct.TYPE_3__]* @IsGenericSystemName.Devices, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @wcscmp(i32 %82, i32 %86)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %8, align 4
  br label %101

91:                                               ; preds = %75
  %92 = load i32, i32* %6, align 4
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds [45 x %struct.TYPE_3__], [45 x %struct.TYPE_3__]* @IsGenericSystemName.Devices, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @wcsicmp(i32 %92, i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %91, %81
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds [45 x %struct.TYPE_3__], [45 x %struct.TYPE_3__]* @IsGenericSystemName.Devices, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 16
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %104
  store i32 128, i32* %4, align 4
  br label %119

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %67

118:                                              ; preds = %74, %67
  store i32 129, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %113, %61
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @_countof(%struct.TYPE_3__*) #1

declare dso_local i32 @wcscmp(i32, i32) #1

declare dso_local i32 @wcsicmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
